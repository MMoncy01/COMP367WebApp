# Rebuild for screenshot
FROM tomcat:9.0
COPY target/*.war /usr/local/tomcat/webapps/COMP367WebApp.war
