pipeline {
    agent { docker 'ruby' }
    stages {
        stage('build') {
            steps {
                sh 'rake'
            }
        }
    }
}