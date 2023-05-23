
FROM openjdk:11


WORKDIR /app
COPY . /app


# Expose the port on which the application will listen
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "simple-java-maven-app.jar"]
