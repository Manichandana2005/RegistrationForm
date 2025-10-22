pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Building registration form...'
                // Example build step (no actual build needed for HTML)
                bat 'echo Build complete'
            }
        }

        stage('Deploy to Test') {
            steps {
                echo 'Deploying to Test Server...'
                // Copy build artifacts to test server folder (Windows paths)
                bat 'xcopy /E /Y "%WORKSPACE%\\*" "C:\\TestServer\\"'
                // Optional: run test scripts here
                bat 'echo Test deployment complete'
            }
        }

        stage('Deploy to Production') {
            steps {
                echo 'Deploying to Production Server...'
                // Copy artifacts from test server to production server
                bat 'xcopy /E /Y "C:\\TestServer\\*" "C:\\ProductionServer\\"'
                bat 'echo Production deployment complete'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
            // Optional: add email/Slack notifications here
        }
        failure {
            echo 'Pipeline failed! Check console output for details.'
            // Optional: add failure notifications here
        }
    }
}
