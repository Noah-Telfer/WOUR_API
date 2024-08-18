# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the local JAR file to the container
COPY target/wour-api-0.0.1-SNAPSHOT.jar /app/wour-api-0.0.1-SNAPSHOT.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/wour-api-0.0.1-SNAPSHOT.jar"]