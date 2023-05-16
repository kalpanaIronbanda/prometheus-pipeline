pipeline{
    agent any
    parameters{
        string(name: 'hostname', defaultValue: 'host name', description: 'host name')
    }    
    stages{
        stage('deploy'){
            steps{
                script{
                sh ''' 
                scp installation.sh root@${hostname}:/root
                '''
                }
            }
        }
        stage('Run'){
            steps{
                script{
                    sh ''' 
                    echo "Running the grafana....."
                    ssh root@${hostname} "sh installation.sh"
                    echo "successfully completed"
                    '''
                }
            }
        }
    }
}