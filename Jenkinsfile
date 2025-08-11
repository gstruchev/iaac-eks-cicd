pipeline{
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage('Checkout SCM') {
            steps {
                script {
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/gstruchev/iaac-eks-cicd']])
                }
            }
        }
        stage('Initializing Terraform'){
            steps {
                script {
                    dir('tf-eks'){
                        sh 'terraform init'
                    }
                }
            }
        }
        stage('Validating Terraform'){
            steps {
                script {
                    dir('tf-eks'){
                        sh 'terraform validate'
                    }
                }
            }
        }
        stage('Terraform Plan'){
            steps {
                script {
                    dir('tf-eks'){
                        sh 'terraform plan'
                    }
                }
            }
        }
        stage('Terraform Apply'){
            steps {
                script {
                    dir('tf-aws-eks'){
                        sh 'terraform apply'
                    }
                }
            }
        }
    }
}