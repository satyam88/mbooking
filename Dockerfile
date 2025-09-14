FROM public.ecr.aws/docker/library/tomcat:11.0.11-jdk21-temurin-noble

LABEL maintainer="satyam.pandely@example.com"

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Create non-root user
RUN useradd -m mbooking

# Copy WAR file into Tomcat (Spring Boot WAR deployment)
COPY ./target/mbooking*.jar /usr/local/tomcat/webapps/mbooking.war

# Ensure Tomcat is owned by non-root user
RUN chown -R mbooking:mbooking /usr/local/tomcat

# Switch to non-root user
USER mbooking

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]