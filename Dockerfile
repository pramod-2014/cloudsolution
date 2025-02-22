FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the Maven project JAR file into the container
COPY target/cloudsolution-*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
