FROM centos:7

MAINTAINER gustavo.goncalves@infoglobo.com.br

ENV TZ=America/Sao_Paulo

#CONFIGURANDO TIMEZONE, INSTALANDO O CURL, BAIXANDO O REPOSITÓRIO DO GOCD, INSTALANDO O JDK 1.8, INSTALANDO O GO-SERVER, GIT e SVN

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
&& yum install -y wget \
&& wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo \
&& rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key \
&& yum install -y java-1.8.0-openjdk \
&& yum install -y jenkins \
&& yum -y install initscripts \
&& yum clean all

RUN yum install -y docker

#CMD ["/bin/bash"]
