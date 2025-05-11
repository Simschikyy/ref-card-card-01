# builder image
FROM maven:3.9-eclipse-temurin-17-alpine as builder

COPY pom.xml .
COPY src src

RUN mvn package

# runner image
FROM ubuntu/jre:17-22.04_edge
COPY --from=builder target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]