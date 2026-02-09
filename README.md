# Strapi Dockerized Application (Multi-Stage Build)

This project demonstrates how to **create, containerize, and run a Strapi application locally using Docker with a multi-stage build**.  
It is part of the internship task to understand Docker, containerization, and backend deployment fundamentals.

---

##  Features

- Strapi v4 application
- Multi-stage Docker build
- SQLite database (local development)
- Proper handling of native Node modules
- Secure environment variable configuration
- Runs fully inside Docker

---

## 🛠 Tech Stack

- **Backend**: Strapi (Node.js)
- **Containerization**: Docker
- **Database**: SQLite
- **OS Compatibility**: Windows / Linux (Dockerized)

---

##  Project Structure

strapi-app/
├── config/
├── database/
├── public/
├── src/
├── .dockerignore
├── .env
├── Dockerfile
├── package.json
└── README.md

---

##  Prerequisites

Make sure you have the following installed:

- Node.js (v18 recommended)
- Docker Desktop
- npm