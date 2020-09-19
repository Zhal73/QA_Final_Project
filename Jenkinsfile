pipeline {
    agent any
    stages {
        stage('Prerequisites') {
            sh 'chmod +x ./scripts/*'
            sh './scripts/installs.sh'
        }

        stage('Testing') {
            sh './scripts/testing.sh'
        }

        stage('Build and Deploy') {
            sh './scripts/build.sh'
        }
    }
}