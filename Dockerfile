
FROM openjdk:11


WORKDIR /app
COPY simple-java-maven-app.jar .


# Expose the port on which the application will listen
EXPOSE 8081

# Define the command to run the application
CMD ["java", "-jar", "simple-java-maven-app.jar"]
