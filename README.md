# 위메프 CI/CD 파이프라인 및 모니터링 도구 PoC

위메프 전체 시스템을 Google Cloud Platform으로 마이그레이션하는 프로젝트가 진행됨에 따라 클라우드의 이점을 살리기 위해 CI/CD를 도입하기로 했습니다.  
기존에는 별다른 CI/CD 파이프라인 없이 개발팀에서 새로운 릴리즈 개발을 완료하면 운영팀이 배포하는 방식으로 배포했으나, 앞으로는 개발팀에서 Git 레포지토리에 소스를 push하면 빌드, 테스트, 승인 후 배포까지 자동화하는 방식으로 CI/CD 파이프라인을 구축하기로 결정되었습니다.  
CI/CD파이프라인 구축을 위해 어떤 도구를 사용할 지 비교하기 위해 다양한 도구를 이용해 PoC를 진행하기로 했습니다.  

---

## Tools
- Jenkins
- Cloud Build
- Artifact Registry
- ArgoCD
- GMP(Google Managed Prometheus)
- Grafana Loki
- Grafana

각 도구를 선택한 이유는 아래와 같습니다.  
Jenkins: 컨테이너 환경에 최적화된 다른 CI 도구도 많기 때문에 Jenkins를 사용한 부분에서 의문을 느낄 수 있습니다. 여기서 Jenkins를 선택한 이유는 현재 개발자들이 Jenkins를 이용하고 있고 익숙하기 때문입니다. 일단 Jenkins를 이용하고 추후에 개발자들이 쿠버네티스에 익숙해졌을 때 다른 도구로 변경하는 방향으로 진행하려고 했습니다.

---

## 요구 사항

개발 환경 구성시에 있던 요구사항들을 정리하면 아래와 같습니다
- 애플리케이션 컨테이너 기반으로 개발
    - GKE Standard 사용(ver 1.25)(GKE 생성은 콘솔에서 진행)
    - GKE는 Fully Private mode로 운영
        - 개발자가 로컬에서 kubectl을 사용하여 쿠버네티스를 사용할 수 있어야 함
- 애플리케이션 접속에 대한 endpoint는 LB 사용
    - LB는 Reginal 유형
- GKE에 애플리케이션 배포도 CI/CD 파이프라인 사용
    - 데모 애플리케이션
        - https://github.com/GoogleCloudPlatform/microservices-demo
- Helm chart 차트 뮤지엄과 container image 레포지토리로는 GCP Artifact Registry를 사용
- 애플리케이션 자동확장 기능 필수
- 클라우드 및 애플리케이션에 대한 로깅 및 모니터링 필요
- GCP 인프라 구축은 Terraform으로 하고 Terraform에 대한 CI/CD 파이프라인도 사용할 것

---

## 인프라 아키텍처

![Infra-Architecture](/img/Application-CICD-pipeline.png)

요구조건을 충족하는 인프라 구축을 위해 위와 같은 아키텍처로 인프라를 구성했습니다.  
요구조건 중 개발자가 로컬에서 kubectl을 사용할 수 있어야 한다는 조건과, GKE는 private으로 운영한다는 조건을 만족시키기 위해서 bastion 서버에서 작업하도록 했습니다.  
각종 CI/CD 도구들(Gitlab, Jenkins, ArgoCD)의 대시보드에 접근할 때는 파이프라인 구축이 완료되는 시점에는 회사의 사내망에 VPC가 전용선을 통해 연결될 예정이기 때문에 안전한 접근에 문제가 없지만 아직 전용선 연결이 되지 않았기 때문에 그 전까지는 프록시를 이용하여 임시로 접근할 수 있도록 했습니다.
로컬에서 bastion으로는 IAP 터널링을 이용하여 트래픽을 전달했고, bastion에서는 kubectl port-forward를 이용하여 패킷을 전달하도록 하였습니다.

---

## Application CI/CD pipeline

![Application Ci/CD pipeline](/img/Application-CICD-pipeline.png)

각 단계별 동작은 아래와 같습니다.
1. 소스코드 저장소에 작성한 소스를 push 합니다.
2. 소스코드 저장소에서 Jenkins로 webhook을 전달합니다.
3. Jenkins에서 소스코드를 pull합니다.
4. Jenkins에서 먼저 Cloud Source Repository에 코드를 저장합니다. 이 과정은 소스코드를 이용하여 컨테이너를 생성하는 Cloud Build에 소스코드를 전달하는 방법으로 사용되며, 혹시 모를 소스코드 저장소의 장애에 대비하여 소스코드를 백업하는데 목적이 있습니다.
5. Cloud Build를 trigger합니다. Cloud Build는 여러 방법으로 사용할 수 있지만, 이 프로젝트에서는 Cloud Source Repository에 있는 소스코드를 기반으로(Dockerfile포함) 컨테이너 이미지를 생성하고 이미지를 Artifact Registry에 저장하는 작업을 미리 생성해두고 필요 시 트리거하는 방식으로 사용합니다.  
    Cloud Build도 Jenkins가 하는 CI 도구의 역할을 수행하도록 구성할 수 있지만 여기서는 단순히 컨테이너 이미지 빌드 용도로만 사용합니다.
6. Cloud Build에서 Source Repository에 있는 소스코드를 pull합니다.
7. 소스코드를 기반으로 컨테이너 이미지를 빌드합니다. 최상위에 위치한 Dockerfile을 기반으로 컨테이너를 생성합니다.
8. 생성한 컨테이너 이미지를 Artifact Registry에 저장합니다.
9. Jenkins에서 Cloud Build의 동작이 끝나는 것을 대기합니다. 동작이 끝나면 결과를 확인합니다.
10. 배포 단계를 할 것인지 승인을 받습니다.
11. 헬름 차트용 소스코드 레파지토리(Source Repository)에 있는 어플리케이션 배포용 helm차트를 pull합니다. 차트 뮤지엄에서 pull하고 수정하는 방식으로 구현해도 되지만 현재 CI/CD 도구로 인해 변경된 helm 차트의 내용을 개발자들이 쉽게 확인하는 용도 및 백업 용도로 레파지토리를 유지하기로 했습니다.
13. Jenkins에서 어플리케이션 배포에 사용된 helm차트에서 컨테이너 이미지의 버전을 수정하고 차트 뮤지엄(Artifact Registry)에 push합니다.
13. Jenkins에서 어플리케이션 배포에 사용된 helm차트에서 컨테이너 이미지의 버전을 수정하고 헬름 차트용 소스코드 레파지토리(Artifact Registry)에 push합니다.
13. Jenkins에서 어플리케이션 배포에 사용된 helm차트에서 컨테이너 이미지의 버전을 수정하고 차트 뮤지엄(Artifact Registry)에 push합니다.
14. ArgoCD에서 artifact registry의 최신 버전 헬름 차트를 가져옵니다. 
15. ArgoCD가 헬름 차트의 내용을 기반으로 쿠버네티스 자원을 추가/변경/삭제합니다.
16. 새롭게 생성되는 Pod가 사용하는 컨테이너 이미지를 Artifact Registry에서 가져와 Pod를 생성합니다.

Cloud Build 사용한 이유는 Jenkins에서 컨테이너 이미지 빌드를 하게 되면 Jenkins의 자원 사용량이 많아져 워커노드를 등록해야 하는 등의 관리를 줄이기 위해서입니다.
Jenkins에서 전반적인 CI 과정을 관리하고 개발자들은 Jenkins를 통해 모든 과정의 진행 및 결과를 확인할 수 있도록 구성하는 것을 의도했습니다.

---

## 로깅 및 모니터링

### Prometheus
쿠버네티스 모니터링은 GMP(Google Managed Prometheus)로 구현했습니다.
GKE에서는 관리형 Prometheus 서비스를 제공하고 있습니다. GMP(Google Managed Prometheus)를 사용하면 Prometheus를 관리 없이 이용할 수 있습니다.  
다만 GMP를 이용하는 경우 Prometheus에 직접 접근할 수 없고 Cloud Monitoring, Cloud Logging을 사용하여 확인해야 합니다.  
이 프로젝트에서는 Grafana 대시보드에서 메트릭 모니터링과 어플리케이션 로그를 같이 확인할 수 있도록 구성했습니다. 이를 위해 Grafana에서 GMP에 쿼리를 날릴 수 있도록 Google에서 제공하는 프록시 서버를 이용했습니다.

### Grafana Loki

어플리케이션 로그 수집은 Grafana Loki를 이용했습니다.  
메트릭 수집은 promtail을 이용했습니다. promtail을 DaemonSet으로 생성하였고,GKE가 기본적으로 컨테이너의 stdout을 저장하는 경로인 /var/lib/docker/containers에 있는 로그 파일들을 수집하도록 설정했습니다.

### Grafana

GMP(Google Managed Prometheus)와 Grafana Loki를 데이터 소스로 대시보드를 구성했습니다.

---

END