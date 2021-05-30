FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY . .
ENTRYPOINT ["java","-jar","/app.jar"]
