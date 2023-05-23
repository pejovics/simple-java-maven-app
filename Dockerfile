
FROM openjdk:11

COPY . /app
WORKDIR /app


# Expose the port on which the application will listen
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "simple-java-maven-app.jar"]
