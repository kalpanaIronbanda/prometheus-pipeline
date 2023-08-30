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
                scp installation.sh ec2-user@${hostname}:/home/ec2-user
                echo "installed successfully"
                '''
                }
            }
        }
        stage('Run'){
            steps{
                script{
                    sh ''' 
                    echo "Running the prometheus....."
                    ssh ec2-user@${hostname} "sh installation.sh"
                    echo "successfully completed"
                    '''
                }
            }
        }
    }
}
