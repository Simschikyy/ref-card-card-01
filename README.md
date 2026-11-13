
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
Das Image wird bei jedem Push auf `main` von GitHub Actions gebaut, getestet und
nach Docker Hub sowie ghcr.io gepusht (`.github/workflows/ci-cd.yml`).

```
docker run -d -p 8080:8080 --name refcard01 <dockerhub-user>/refcard01:latest
```

Die App ist danach unter http://localhost:8080 erreichbar.
