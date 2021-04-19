pipeline {
    agent {
        docker {
            image 'node:alpine' 
            args '-p 3003:3003' 
        }
    }
    stages {
        stage('Clone') {
            steps {
                git branch: 'master',
                   // credentialsId: '121231k3jkj2kjkjk',
                    url: 'https://github.com/amxwesley/docker.git'
            }
        }
        stage('Build') { 
            steps {
                sh 'sudo npm -g config set user root'
                sh 'sudo npm install'
            }
        }
        stage('Build Image'){
            steps{
                sh 'docker build -t amxwesley/docker .'
            }
        }
    }
}
