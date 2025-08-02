# Use OpenJDK 17 base image
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy jar file
COPY target/*.jar app.jar

# Tell Cloud Run to listen on $PORT
ENV PORT 8080
EXPOSE 8080

# Start app
ENTRYPOINT ["java", "-jar", "app.jar"]
