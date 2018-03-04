node {

    stage('Versions') {
        sh 'ruby -v'
        sh 'java -version'
    }

    stage('build') {
        sh 'bundle'
        sh 'cucumber'
    }
}
