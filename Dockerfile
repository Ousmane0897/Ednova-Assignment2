# Use an OpenJDK image as the base
FROM openjdk:23

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build/libs directory into the container
COPY build/libs/SpringBootAssignment2-0.0.1-SNAPSHOT.jar springboot-docker.jar

# Expose the port that your Spring Boot application will run on
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "springboot-docker.jar"]
