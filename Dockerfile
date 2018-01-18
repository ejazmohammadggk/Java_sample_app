FROM maven as builder
WORKDIR /apps
COPY . /apps
RUN ls 
RUN mvn -f Java_sample_app/SpringMVCSecurityXML/ clean install
FROM tomcat
COPY --from=builder /apps/Java_sample_app/SpringMVCSecurityXML/target/SpringMVCSecurityXML.war /usr/local/tomcat/webapps/
EXPOSE 8080
