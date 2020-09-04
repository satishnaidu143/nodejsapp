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
                sh 'npm install'
            }
        }
        stage('Updating Docker image'){
            steps{
                sh label: '', script: '''
			  docker build -t nodejs .
                          docker tag nodejs:latest snaidu/nodejs:latest
                          docker push snaidu/nodejs:latest '''
            }
        }
        stage('Continous Deployment'){
            steps{
                sh 'helm upgrade --install nodejs ./app'
            }
        }
		
     }
        
}