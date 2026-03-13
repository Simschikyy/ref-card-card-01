# m347-ref-card-01

A Spring Boot reference application that allows students to practice containerization, build automation, and version control workflows.

## Prerequisites

- **OS:** Windows, macOS or Linux
- **Java:** 21 or higher
- **Maven:** 3.8+ (or use the included Maven Wrapper `mvnw`)
- **Docker:** (optional, for container builds)

## Installation
```bash
git clone https://gitlab.com/lokane8957/m347-ref-card-01.git
cd m347-ref-card-01
./mvnw package
java -jar target/*.jar
```

The application starts on http://localhost:8080.

## Docker
```bash
docker build -t ref-card-01 .
docker run -p 8080:8080 ref-card-01
```

## Author

Ledion Dervishi - BBW