# RefCard-01

RefCard-01 is a Spring Boot application that allows users to manage and view reference cards for various programming languages.

## Voraussetzungen

- **Betriebssystem**: Das Projekt ist plattformunabhängig und kann auf Windows, macOS und Linux ausgeführt werden.
- **Framework/Infrastruktur**: 
  - Java 17 (oder höher)
  - Maven (für das Build)
  - Docker (optional, für den Container-Betrieb)
- **Wissen**: Grundkenntnisse in Java und Spring Boot werden empfohlen.

## Installation und Verwendung

1. **Lokale Installation**

   - Clone das Repository:
     ```bash
     git clone https://gitlab.com/deinBenutzername/RefCard-01.git
     cd RefCard-01
     ```

   - Baue das Projekt mit Maven:
     ```bash
     mvn clean install
     ```

   - Starte die Anwendung:
     ```bash
     java -jar target/RefCard-01.jar
     ```

2. **Docker-Installation** (Optional)

   - Baue das Docker-Image:
     ```bash
     docker build -t refcard-01 .
     ```

   - Starte den Docker-Container:
     ```bash
     docker run -p 8080:8080 refcard-01
     ```

3. **Beispielanwendung**

   Sobald die Anwendung läuft, kannst du über den Browser auf `http://localhost:8080` zugreifen.

## Lizenz

Dieses Projekt ist unter der MIT-Lizenz lizenziert.










TEST MEDIAHSOP EAJFIAJFOIAJFo



















# App Ref. Card 01
Standalone Spring Boot Application

---
title: App Ref. Card 01
author: Rinaldo Lanza, BBW
date: 12. Februar 2023
---


Link zur Übersicht:<br/>
https://gitlab.com/bbwrl/m347-ref-card-overview


## Installation der benötigten Werkzeuge

Maven Tutorial for Beginners<br/>
https://www.simplilearn.com/tutorials/maven-tutorial



### Projekt bauen und starten
Die Ausführung der Befehle erfolgt im Projektordner
Builden mit Maven<br/>
```$ mvn package```

Das Projekt wird gebaut und die entsprechende Jar-Datei im Ordner Target erstellt (Artefakt).
Die erstellte Datei kann nun direkt mit Java gestartet werden.<br/>
```$ java -jar target/app-refcard-01-0.0.1-SNAPSHOT.jar```

Die App kann im Browser unter der URL http://localhost:8080 betrachtet werden.


### Inbetriebnahme mit Docker Container
folgt...




App Ref. Card 01
Standalone Spring Boot Application


title: App Ref. Card 01
author: Rinaldo Lanza, BBW
date: 12. Februar 2023
test
Link zur Übersicht:
https://gitlab.com/bbwrl/m347-ref-card-overview

Installation der benötigten Werkzeuge
Maven Tutorial for Beginners
https://www.simplilearn.com/tutorials/maven-tutorial

Projekt bauen und starten
Die Ausführung der Befehle erfolgt im Projektordner
Builden mit Maven
$ mvn package
Das Projekt wird gebaut und die entsprechende Jar-Datei im Ordner Target erstellt (Artefakt).
Die erstellte Datei kann nun direkt mit Java gestartet werden.
$ java -jar target/app-refcard-01-0.0.1-SNAPSHOT.jar
Die App kann im Browser unter der URL http://localhost:8080 betrachtet werden.




