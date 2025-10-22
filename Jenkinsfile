pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Manichandana2005/RegistrationForm.git'
            }
        }

        stage('Build') {
            steps {
                echo 'No build needed for HTML project.'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying static HTML project...'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
