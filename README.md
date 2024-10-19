# MarvCore Server Monitoring and Control

This project provides a **web-based monitoring and control panel** for Docker containers, specifically for managing Minecraft and CS2 servers.

## Features
- Real-time system monitoring (CPU, Disk Usage, Temperature).
- Start, Stop, and Restart controls for `mc-server` and `cs2-server`.
- Display the status of each server (running/stopped).

## Installation

### 1. Clone the repository:
```bash
git clone https://github.com/yourusername/MarvCore.git
cd MarvCore

### 2. Configure PostgreSQL in Docker:
```bash
docker run --name postgres-container -e POSTGRES_USER=web_user -e POSTGRES_PASSWORD=web_pass -e POSTGRES_DB=web_db -p 5432:5432 -v /data/postgres:/var/lib/postgresql/data -d postgres

### 3. Install dependencies with Docker Compose:
Make sure Docker and Docker Compose are installed. Run the following:
```bash
docker-compose up

This will automatically build the Docker containers for both the web application and PostgreSQL.

Docker Containers
Minecraft Server: This container manages the Minecraft server.
CS2 Server: Manages the CS2 server.
You can monitor and control these containers from the web interface.

Web Application
The web app is built with Ruby on Rails and provides a control panel for Docker containers. It displays system stats and allows you to start, stop, and restart the servers. It also shows the status of each container in real-time.

Configuration
In config/database.yml, update the PostgreSQL connection settings if necessary. The default settings should work with the provided Docker setup.

Make sure the required commands for system monitoring (e.g., mpstat, sensors) are installed in the Docker environment. These are installed via the Dockerfile.