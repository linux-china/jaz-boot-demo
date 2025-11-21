# Use any Microsoft Build of OpenJDK base image
FROM mcr.microsoft.com/openjdk/jdk:25-ubuntu

# Add your application.jar
COPY target/jaz-boot-demo-0.0.1-SNAPSHOT.jar /application.jar
EXPOSE 8080

ENV TZ=America/New_York

# Use jaz to launch your Java application
CMD ["jaz", "-jar", "application.jar"]