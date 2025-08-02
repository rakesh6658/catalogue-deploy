pipeline {
    agent { label 'agent-1' }

    parameters {
        string(name: 'version', defaultValue: '1.0.1', description: 'Which version to Deploy')
        string(name: 'environment', defaultValue: 'dev', description: 'Which environment to Deploy')
    }

    stages {
        stage('Deploy') {
            steps {
                wrap([$class: 'AnsiColorBuildWrapper', colorMapName: 'xterm']) {
                    echo "Deploying..."
                    echo "Version from params: ${params.version}"
                    echo "Environment: ${params.environment}"
                }
            }
        }
    }
}
