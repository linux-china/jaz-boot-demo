# Use any Microsoft Build of OpenJDK base image
FROM mcr.microsoft.com/openjdk/jdk:21-ubuntu

# Add your application.jar
COPY target/jaz-boot-demo-0.0.1-SNAPSHOT.jar /application.jar
EXPOSE 8080

# Use jaz to launch your Java application
CMD ["jaz", "-jar", "application.jar"]