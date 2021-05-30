FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/docker/khamous/demo-rest-api/0.0.1-SNAPSHOT/build/
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
