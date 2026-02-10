# 🚀 End-to-End DevOps CI/CD Project

This project demonstrates a beginner-friendly DevOps workflow using a containerized Flask application with Docker, Kubernetes (Minikube), and GitHub Actions.
---
## 🧰 Tools Used

- **Linux**
- **Docker**
- **Docker Hub**
- **Kubernetes (Minikube)**
- **GitHub Actions (CI/CD)**
- **Python Flask**
---
## 📁 Project Structure
## 📁 Project Structure

```text
devops-ci-cd-k8s/
├── app/
│   └── app.py
├── Dockerfile
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── .github/
│   └── workflows/
│       └── ci.yml
└── README.md
```
---

## 📦 How It Works

1. Code is pushed to GitHub.
2. GitHub Actions builds a Docker image.
3. The image is pushed to Docker Hub.
4. Kubernetes (Minikube) pulls the image and deploys the app.
---

## 🚀 Running Locally

To deploy the application using Minikube:

1. Apply the Kubernetes manifests:
   ```bash
   kubectl apply -f k8s/
   
2. Access the service:
   ```bash
   minikube service flask-service
