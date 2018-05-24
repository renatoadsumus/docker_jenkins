pipeline {
    agent any 
    parameters {
       
        string(defaultValue: "", description: 'Credencias da AWS', name: 'AWS_SECRET_ACCESS_KEY')
        string(defaultValue: "", description: 'Credencias da AWS', name: 'AWS_ACCESS_KEY_ID')
    }
    
 stages {
	
	stage('Clone Repository') { 
        steps {
            checkout scm              
        }
    }	
		
     stage('Build') { 
        steps {
            echo "Construindo a imagem AWS CLI - docker build -t aws_cli:lastet"  
			//docker.build("renatoadumus/jenkins")
			//docker ps
			sh "pwd"
			sh "ls"
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