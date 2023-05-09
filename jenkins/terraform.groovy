import java.text.SimpleDateFormat

def TODAY = (new SimpleDateFormat("yyyyMMddHHmmss")).format(new Date())

pipeline{
    agent any
    environment{
        strTag = "${TODAY}_${BUILD_ID}"
    }
    stages{
        stage('Clone source'){
            steps{
                dir('./terraform'){
                    git branch: 'master', url:'http://10.7.0.7/root/terraform.git'
                }
            }
        }
        stage('Terraform plan'){
            steps{
                sh '''
                    cd terraform
                    terraform init
                    terraform plan
                '''
            }
        }
        stage('Approve Deploy'){
            steps{
                input "배포하시겠습니까?"
            }
        }
        stage('Terraform apply'){
            steps{
                sh '''
                    cd terraform
                    terraform apply --auto-approve
                '''
            }
        }
    }
}