# App Ref. Card 01

Standalone Spring Boot Application

---

Titel: App Ref. Card 01 <br>
Autor: Tiago Araujo Rodrigues <br>
Original Werk: Rinaldo Lanza, BBW <br>
Datum: 13.03.2026

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
```
