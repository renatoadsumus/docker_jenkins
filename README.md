# Docker Jenkins
A execução desse Dockerfile irá gerar uma imagem contento jenkins com docker instalado

# Como usar

 Executar no host chmod 644 /var/run/docker.sock <br /><br />
 docker run -d -p 8080:8080 -p 50000:50000 -v /home/vagrant/jenkins_volume:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock renatoadsumus/jenkins:latest
