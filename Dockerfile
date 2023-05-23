
#FROM openjdk:11


#WORKDIR /app
#COPY simple-java-maven-app.jar .


# Expose the port on which the application will listen
#EXPOSE 8081

# Define the command to run the application
#CMD ["java", "-jar", "simple-java-maven-app.jar"]

# Use a base image that has Maven and Java installed
FROM maven:3.8.6-openjdk-11-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml file to the container
COPY pom.xml .

# Download the project dependencies
RUN mvn dependency:go-offline

# Copy the project source code to the container
COPY src ./src


# Build the project with Maven
RUN mvn clean install

# Use a lighter-weight base image for the final runtime container
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the previous stage
COPY --from=build /app/target/your-app.jar .

# Specify the command to run the JAR file
CMD ["java", "-jar", "simple-java-maven-app.jar"]
