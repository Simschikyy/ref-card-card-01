# App Ref. Card 01

Standalone Spring Boot Application

---

Titel: App Ref. Card 01 <br>
Autor: Tiago Araujo Rodrigues <br>
Original Werk: Rinaldo Lanza, BBW <br>
Datum: 04.07.2026

---

## Projektbeschreibung

`app-refcard-01` ist ein kleines Spring Boot Tool, das es Entwicklern und Lernenden ermöglicht, unkompliziert die lokale Server-IP-Adresse abzufragen. Die Anwendung stellt diese Information sowohl über ein grafisches Web-Interface als auch über eine strukturierte REST-API zur Verfügung.

## Voraussetzungen

- **Betriebssystem:** Das Projekt ist plattformunabhängig und läuft auf Windows, macOS oder Linux. Dank Docker-Unterstützung kann es in jeder kompatiblen Container-Umgebung ausgeführt werden.
- **Framework Infrastruktur:** * Java Development Kit (JDK) 21. *Empfehlung: Nutzen Sie Eclipse Temurin (ehemals AdoptOpenJDK), da die alten offiziellen OpenJDK-Images auf Docker Hub für neuere Versionen nicht mehr gepflegt werden.*
  - Apache Maven für den lokalen Build-Prozess.
  - Docker (optional, aber empfohlen für eine saubere Container-Ausführung).
- **Wissen:** Grundkenntnisse im Umgang mit dem Terminal (Kommandozeile), grundlegendes Verständnis von REST-APIs sowie grundlegendes Docker-Wissen.

## Installation und Verwendung

### Option 1: Installation lokal via Maven & Java

1. Navigieren Sie im Terminal in das Projektverzeichnis und kompilieren Sie die Anwendung:

```bash
    git clone https://gitlab.com/tiago-rodrigues/m-347-ref-card-01-tiago-araujo-rodrigues.git
    cd m-347-ref-card-01-tiago-araujo-rodrigues/
    mvn package
    cd target/
    java -jar target/app-refcard-01-0.0.1-SNAPSHOT.jar
```

### Option 2: Installation via Docker (Empfohlen)

Stellen Sie sicher, dass Ihr `dockerfile` die moderne, schlanke Java 21 Version nutzt (z. B. `FROM eclipse-temurin:21-jdk-jammy`).

1. Bauen Sie das Docker-Image aus dem Projektverzeichnis heraus:
   
   ```Bash
   docker build -t ref-card-1 .
   ```

2. Starten Sie den Docker-Container und mappen Sie den Port 8080:
   
   ```Bash
   docker run -p 8080:8080 ref-card-1
   ```

### Verwendung / Beispiele

Sobald die Anwendung (lokal oder im Container) läuft, ist sie über den Port `8080` erreichbar.

**Beispiel 1: Web-Interface (Hello-World)** Rufen Sie in Ihrem Webbrowser die folgende Adresse auf:

```Plaintext
http://localhost:8080/
```

*Ausgabe:* Eine Webseite wird geladen, die den einfachen Text `IP Address (Server): [Ihre aktuelle IP]` anzeigt.

**Beispiel 2: REST-API abfragen (Fortgeschritten)** Für die Nutzung in anderen Programmen können Sie die REST-API abfragen, beispielsweise mit `curl` im Terminal:

```Bash
curl http://localhost:8080/api
```

*Ausgabe:* Sie erhalten eine saubere JSON-Antwort mit der IP-Adresse des Servers:

```JSON
{
  "text": "Application Ref. Card 01 - API hello - Server IP Address: 172.17.0.2"
}
```
