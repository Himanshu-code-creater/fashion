pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Himanshu-code-creater/fashion.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('my-app:latest')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 3000:3000 my-app:latest'
                }
            }
        }
    }
}
