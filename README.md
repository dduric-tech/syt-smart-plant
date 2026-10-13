# Smart-Home Pflanzenschutz & Monitoring (Home Assistant)

**Projekt von:** Dario Duric  
**Klasse:** 3CHIT  
**Fach:** Systemtechnik (SYT)  
**Schuljahr:** 2026/27  
**Betreuer:** Dominik Höbert  

---

## Projektübersicht

Dieses Projekt implementiert eine automatisierte Pflanzenüberwachung und Raumklimaerfassung auf Basis von Home Assistant, Docker und einem ESP32-Mikrocontroller.

### Bewertungsmatrix

| Note | Stufe | Enthaltene Features |
| :--- | :--- | :--- |
| **4** | **GKü** | Bodenfeuchtigkeit messen, Pflanzen automatisch bewässern, Home-Assistant-Dashboard, Docker / Linux |
| **3** | **GKv** | Temperatur messen, WLAN-basierte Anwesenheitserkennung (Device Tracker) |
| **2** | **EKü** | Automatisierte Backup-Strategie (Skripting & Rotation) |
| **1** | **EKv** | Bereitstellung über Reverse Proxy (SSL/TLS, Port 443) |

---

## Projektstruktur

- `docker/`: `docker-compose.yml` für Home Assistant, Mosquitto MQTT und Nginx Proxy Manager sowie Konfigurationen.
- `esp32/`: `plant_node.yaml` (ESPHome-Konfiguration für Sensorik und Aktorik).
- `scripts/`: `backup.sh` zur automatischen Datensicherung der Docker-Volumes.
