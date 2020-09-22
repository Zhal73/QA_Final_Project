pipeline {
    agent any
    stages {
        stage('Prerequisites') {
            steps {
                sh 'chmod +x ./scripts/*'
                sh './scripts/installs.sh'
            }
        }

        stage('Testing') {
	    steps {
	        sh './scripts/testing.sh'
	    }
        }

        stage('Build and Deploy') {
	    steps {
                sh './scripts/terraform.sh'
                sh './scripts/ansible.sh'
                sh './scripts/build.sh'
	    }
        }
    }
}
