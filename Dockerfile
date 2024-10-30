FROM tomcat:9.0
LABEL Maintainer="Poorvika"
WORKDIR /usr/local/tomcat
RUN apt-get update && apt-get install -y openjdk-11-jdk
COPY /Amazon_cat/Amazon/Amazon-Web/target/Amazon.war /usr/local/tomcat/webapps/
COPY /Amazon_cat/SKY/SKY-Web/target/SKY.war /usr/local/tomcat/webapps/
COPY /Amazon_cat/SpringCore/target/SpringCore-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
COPY /Amazon_cat/SpringDemo/target/SpringDemo-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
COPY /Amazon_cat/SpringNew/Spring-Web/target/Spring-Web.war /usr/local/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]

