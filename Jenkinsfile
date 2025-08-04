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
         stage('Init'){
            steps{
                sh """
                cd terraform
                terraform init 
                """
            }
        }
        stage('Plan'){
            steps{
                sh """
                cd terraform
                terraform plan -var="app_version=${params.version}" 
                """
            }
        }
        // stage('Approve') {
        //     input {
        //         message "Should we continue?"
        //         ok "Yes, we should."
        //         submitter "alice,bob"
        //         parameters {
        //             string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
        //         }
        //     }
        //     steps {
        //         echo "Hello, ${PERSON}, nice to meet you."
        //     }
        // }

        stage('Apply'){
            steps{
                sh """
                cd terraform
                terraform destroy  -var="app_version=${params.version}"  -auto-approve
                """
            }
        }
    }

    }

