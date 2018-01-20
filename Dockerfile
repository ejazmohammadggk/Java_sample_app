FROM maven as builder
WORKDIR /apps
COPY . /apps
RUN mvn -f /apps/SpringMVCSecurityXML/ clean install
FROM tomcat
COPY --from=builder /apps/SpringMVCSecurityXML/target/SpringMVCSecurityXML.war /usr/local/tomcat/webapps/
EXPOSE 8080
