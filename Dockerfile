FROM maven:3.9-eclipse-temurin-17-alpine as builder
WORKDIR /app
COPY . .
RUN mvn package

FROM ubuntu/jre:17-22.04_edge
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
