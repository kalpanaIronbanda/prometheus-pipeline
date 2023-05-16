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
                echo "installing......"
                scp installation.sh root@${hostname}:/root
                echo "installed successfully"
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