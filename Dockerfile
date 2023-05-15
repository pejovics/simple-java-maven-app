
FROM openjdk:11

COPY . /app
WORKDIR /app

#dodao sam jer mi jenkins baca gresku docker not found
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

# Expose the port on which the application will listen
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "simple-java-maven-app.jar"]
