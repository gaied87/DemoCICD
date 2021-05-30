FROM maven:3.5.4-jdk-8 AS build-env
WORKDIR /app

COPY pom.xml ./
RUN mvn dependency:go-offline
RUN mvn spring-javaformat:help

COPY . ./
RUN mvn spring-javaformat:apply
RUN mvn package -DskipTests=true

FROM openjdk:8-jdk-alpine
EXPOSE 8086
ADD /target/demo-rest-api-0.0.1-SNAPSHOT.jar demo-rest-api-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-rest-api-0.0.1-SNAPSHOT.jar"]
