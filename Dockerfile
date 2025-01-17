FROM amazonlinux:latest

MAINTAINER CAM@locustec.com

RUN yum install wget tar gzip -y
RUN yum install java-1.8.0-openjdk.x86_64 -y
WORKDIR /opt
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.38/bin/apache-tomcat-8.5.38.tar.gz
RUN tar -xvzf /opt/apache-tomcat-8.5.38.tar.gz
#WORKDIR /opt/apache-tomcat-8.5.38/webapps
## #COPY . sample.war

EXPOSE 8080
CMD ["/opt/apache-tomcat-8.5.38/bin/catalina.sh", "run"]
