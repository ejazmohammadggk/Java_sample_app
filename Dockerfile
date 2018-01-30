FROM tomcat
ADD ./target/SpringMVCSecurityXML/SpringMVCSecurityXML.war /usr/local/tomcat/webapps/ 
EXPOSE 8080
