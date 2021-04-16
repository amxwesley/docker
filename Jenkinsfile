pipeline {
    agent {
        docker {
            image 'node:alpine' 
            args '-p 3003:3003' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'chown -R 111:120 "/.npm"'
                sh 'npm install'
            }
        }
        stage('Build Image'){
            steps{
                sh 'docker build -t amxwesley/docker .'
            }
        }
    }
}
