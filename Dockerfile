FROM tomcat
ADD ./target/SpringMVCSecurityXML.war /usr/local/tomcat/webapps/ 
EXPOSE 8080
