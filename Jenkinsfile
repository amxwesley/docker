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
                sh 'sudo npm cache clean --force'
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
