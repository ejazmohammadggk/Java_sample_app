FROM tomcat
ADD ./SpringMVCSecurityXML/target/SpringMVCSecurityXML.war /usr/local/tomcat/webapps/ 
EXPOSE 8080
