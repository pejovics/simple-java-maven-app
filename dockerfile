# Use the official OpenJDK 11 image as the base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the Java application jar file to the container
COPY myapp.jar /app

# Expose the port on which the application will listen
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "myapp.jar"]
