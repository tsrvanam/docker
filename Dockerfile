#To deploy a web app .war file to tomcat server.

# Use the official Tomcat base image
FROM tomcat:10.1-jdk17-temurin

# Remove the default webapps to keep the container slim (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your local .war file into the Tomcat webapps directory
# Replace 'your-app.war' with the actual name of your file
# Replace 'calculator-app.war' with the actual name you found in the target folder

COPY target/calculator-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port

EXPOSE 8080

# Tomcat starts automatically via the base image's entrypoint
CMD ["catalina.sh", "run"]
