pipeline {
    agent any
    stages {
        stage('terrafrom init') {
            steps { 
                dir ('app_db/rds') {
                sh "terraform init"
                }
            }
        }
        stage('checkov check') {
            steps {
                dir ('app_db')
                sh "checkov -d ."
            }
        }
        stage ('terraform validate') {
            steps {
                dir ('app_db/rds') {
                    sh "terraform validate"
                }
            }
        }
        stage ('terraform plan') {
            steps{
                dir ('app_db/rds'){
                    sh "terraform plan"
                }
            }
        }
        stage ('terraform apply') {
            steps{
                dir ('app_db/rds'){
                    sh "terraform destroy --auto-approve"
            }
        }
    } 
}   
    post { 
        always {
            echo "### CLEARNING WORKSPACE ###"
            cleanWs()
        }
    }
}
