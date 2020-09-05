pipeline{
    agent any
    stages{
        stage('Continous Download'){
            steps{
                
                git 'https://github.com/satishnaidu143/nodejsapp.git'
            }
        }
        stage('Continous Build'){
            steps{
                 sh label: '', script: '''
			              npm install
                          npm test    '''
            }
        }
        stage('Updating Docker image'){
            steps{
                sh label: '', script: '''
			              docker build -t nodejs .
                          docker tag nodejs:latest snaidu/nodejs:latest
                          docker push snaidu/nodejs:latest
                          docker rmi nodejs snaidu/nodejs:latest '''
            }
        }
        stage('Continous Deployment'){
            steps{
                sh label: '', script: '''
                helm upgrade --install nodejs ./app'''
            }
        }
		
     }
        
}