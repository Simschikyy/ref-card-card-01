# ---------- Stage 1: Build ----------
# Maven + JDK 21 bauen das Projekt und erzeugen das JAR (Artefakt).
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app

# Zuerst nur das pom.xml kopieren: Die Dependencies landen in einem eigenen
# Layer und werden nur neu geladen, wenn sich das pom.xml ändert.
COPY pom.xml .
RUN mvn -B dependency:go-offline

COPY src ./src
# Tests laufen bereits im Workflow (Job "test"), darum hier übersprungen.
RUN mvn -B package -DskipTests

# ---------- Stage 2: Runtime ----------
# Nur die JRE, kein Maven und kein Quellcode: kleineres Image.
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=build /app/target/app-refcard-01-0.0.1-SNAPSHOT.jar app.jar

# Spring Boot hört standardmässig auf Port 8080.
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
