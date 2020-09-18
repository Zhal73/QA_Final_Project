pipeline {
    agent any
    stages {
        stage('Get Repo') {
            sh 'chmod +x ./scripts/*'
            sh './scripts/getrepo.sh'
        }
        stage('Prerequisites') {
            sh './scripts/installs.sh'
            sh './scripts/maven.sh'
        }

        stage('') {
            
        }

        stage('') {
            
        }
    }
}