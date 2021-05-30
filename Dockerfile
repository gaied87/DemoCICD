FROM openjdk:8-jdk-alpine
EXPOSE 8086
ADD /target/demo-rest-api-0.0.1-SNAPSHOT.jar demo-rest-api-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-rest-api-0.0.1-SNAPSHOT.jar"]
