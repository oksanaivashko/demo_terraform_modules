pipeline {
    agent any

    environment {
    _ENV = (BRANCH_NAME == 'dev') ? 'dev' : ''
}

    stages {
        stage('terraform init') {
            steps {
                dir("environments/${TF_ENV}") {
                    sh 'terraform init'
                }
            }
        }
        stage('terraform validate') {
            steps {
                dir("environments/${TF_ENV}") {
                    sh 'terraform validate'
                }
            }
        }
        stage('terraform plan') {
            steps {
                dir("environments/${TF_ENV}") {
                    sh 'terraform plan'
                }
            }
        }
        stage('terraform apply') {
            steps {
                dir("environments/${TF_ENV}") {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
