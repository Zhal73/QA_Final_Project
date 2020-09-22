pipeline {
    agent any
    stages {
        steps('Prerequisites') {
            sh 'chmod +x ./scripts/*'
            sh './scripts/installs.sh'
        }

        steps('Testing') {
            sh './scripts/testing.sh'
        }

        steps('Build and Deploy') {
            sh './scripts/terraform.sh'
            sh './scripts/ansible.sh'
            sh './scripts/build.sh'
        }
    }
}
