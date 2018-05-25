pipeline {
    agent any 
    parameters {
       
         string(defaultValue: "", description: 'Credencias da AWS', name: 'AWS_ACCESS_KEY_ID')
		 string(defaultValue: "", description: 'Credencias da AWS', name: 'AWS_SECRET_ACCESS_KEY')
       
    }
    
 stages {	
	
	/*stage('Front-end') {
            agent {
                docker { image 'node:7-alpine' }
            }
            steps {
                sh 'node --version'
            }
    }*/
		
     stage('Build') { 
        steps {
            echo "Construindo a imagem Docker com AWS CLI" 			
			sh "docker build -t aws_cli:lastet ."					
         }
    }
		
	stage('Run') { 
        steps {			
			echo "Executando Container Docker AWS CLI"
			//echo "AWS_ACCESS_KEY_ID: ${params.AWS_ACCESS_KEY_ID}"
			//echo "AWS_SECRET_ACCESS_KEY: ${params.AWS_SECRET_ACCESS_KEY}"
			//echo "${env.BUILD_ID}"
			sh "docker run -it --name aws_container_geru -e AWS_ACCESS_KEY_ID='${params.AWS_ACCESS_KEY_ID}' -e AWS_SECRET_ACCESS_KEY='${params.AWS_SECRET_ACCESS_KEY}' aws_cli:lastet /bin/bash"
						
        }			
    }	
	
	stage('Create-Deploy-S3') { 
        steps {			
			echo "Criando Ambiente S3 na AWS"
			//sh "docker exec aws_container_geru exec ./criar_s3.sh"											
				                
        }			
    }
	
	stage('Create-Elastic-Beanstalk') { 
        steps {			
			echo "Criando Ambiente Beanstalk na AWS"						
            //sh "docker exec aws_container_geru exec ./criar_eb.sh"
        }			
    }

	stage('Kill-Container') { 
        steps {		
			echo "Matando container AWS_CLI"
			//sh "docker stop aws_container_geru"
			//sh "docker rm aws_container_geru"
		}
		
	}
  }
}