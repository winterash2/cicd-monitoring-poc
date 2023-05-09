import java.text.SimpleDateFormat

def TODAY = (new SimpleDateFormat("yyyyMMddHHmmss")).format(new Date())

pipeline{
    agent any
    environment{
        strImage = "asia-northeast3-docker.pkg.dev/prj-sandbox-devops-9999/djlee-container-registry/microservices-demo/adservice"
        strTag = "${TODAY}_${BUILD_ID}"
    }
    stages{
        stage('Clean directory'){
            steps{
                sh 'rm -rf *'
            }
        }
        stage('Clone source'){
            steps{
                dir('./adservice'){
                    git branch: 'master', url:'http://10.7.0.7/root/adservice.git'
                }
            }
        }
        stage('Clone Google Source Repository'){
            steps{
                sh '''
                    gcloud source repos clone djlee-adservice --project=prj-sandbox-devops-9999
                    mkdir push
                    cp -r adservice/* push # 숨김파일(.git) 제외하고 복사
                    cp -r djlee-adservice/.git push
                    cd push
                    git add .
                    git commit -m "[UPDATE] adcervice update - ${strTag} (by jenkins)"
                    git push origin master
                '''
            }
        }
        stage('Execute Cloud Build'){
            steps{
                sh '''
                    gcloud config set project prj-sandbox-devops-9999
                    gcloud beta builds triggers run djlee-cloud-build-adservice >> build-info.yaml
                    gcloud beta builds log --stream $(yq e '.metadata.build.id' build-info.yaml) | tee -a build-result.yaml
                    echo 'DONE'
                '''
            }
        }
        stage('Verify Cloud Build Result'){
            steps{
                script {
                    BUILD_RESULT = sh(returnStdout: true, script: 'tail -2 build-result.yaml | head -1').trim()
                    if( BUILD_RESULT == 'DONE' ){
                        echo "Cloud Build Success"
                    } else{
                        error "Cloud Build Failed"
                    }
                }
            }
        }
        stage('Change Image tag from SHA to Date_BuildNum'){
            steps{
                sh '''
                    export OLD_TAG=$(yq e '.metadata.build.artifacts.images[0]' build-info.yaml | cut -d ':' -f2)
                    echo $OLD_TAG
                    gcloud artifacts docker tags add \
                        ${strImage}:$OLD_TAG \
                        ${strImage}:${strTag}
                    yes | gcloud artifacts docker tags delete ${strImage}:$OLD_TAG
                '''
            }
        }
        stage('Approve Deploy'){
            steps{
                input "배포하시겠습니까?"
            }
        }
        stage('Update Helm chart'){
            steps{
                sh '''
                    # Source Repository에서 Helm 차트를 가져온 뒤, patch 버전을 하나 올리고, adservice의 image tag를 변경
                    gcloud source repos clone djlee-helm-chart --project=prj-sandbox-devops-9999
                    cd djlee-helm-chart
                    export CURRENT_HELM_VERSION=$(yq e '.version' Chart.yaml)
                    export NEW_HELM_VERSION=$( python3 -c "import sys; print('.'.join([str(x+y) for x,y in zip([int(x) for x in sys.argv[1].split('.')], [0,0,1])]))" ${CURRENT_HELM_VERSION} )
                    yq e --inplace '.version = "'$NEW_HELM_VERSION'"' Chart.yaml
                    yq e --inplace '.adService.tag = "'${strTag}'"' values.yaml
                    cat Chart.yaml

                    # HELM 차트 변경을 Source Repository에 적용
                    git config --global user.name "djlee_jenkins"
                    git config --global user.email "djlee_jenkins@wemakeprice.com"
                    git add .
                    git commit -m "$NEW_HELM_VERSION deployed by jenkins"
                    git push origin master
                    
                    # HELM 차트 Deploy
                    gcloud auth print-access-token | helm registry login -u oauth2accesstoken --password-stdin https://asia-northeast3-docker.pkg.dev
                    helm package .
                    helm push online* oci://asia-northeast3-docker.pkg.dev/prj-sandbox-devops-9999/djlee-helm-chart
                '''
            }
        }
    }
}