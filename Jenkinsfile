pipeline {
    agent any 
    parameters {
       
        string(defaultValue: "", description: 'Credencias da AWS', name: 'AWS_SECRET_ACCESS_KEY')
        string(defaultValue: "", description: 'Credencias da AWS', name: 'AWS_ACCESS_KEY_ID')
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
            echo "Construindo a imagem AWS CLI - docker build -t aws_cli:lastet"  
			//docker.build("renatoadumus/aws_cli")
			//def customImage = docker.build("renatoadumus")
			sh "ls"
			sh "docker build -t aws_cli:2.0 ."
			sh "docker images"			
         }
    }
		
	stage('Run') { 
        steps {
			echo "Executando docker run -it --name aws_container -e AWS_ACCESS_KEY_ID='${params.AWS_ACCESS_ID}' -e AWS_SECRET_ACCESS_KEY='${params.AWS_SECRET_KEY}' aws_cli:lastet /bin/bash"
			echo "Executando docker exec aws_container exec ./criar_s3.sh" 								
			echo "Executando docker exec aws_container exec ./criar_eb.sh" 				
                
        }			
    }        
  }
}