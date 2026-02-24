# 🚀 End-to-End DevOps CI/CD Project

This project demonstrates a beginner-friendly DevOps workflow using a containerized Flask application with Docker, Kubernetes (Minikube), and GitHub Actions.
---
## 🧰 Tools Used

- **Linux**
- **Docker**
- **Docker Hub**
- **Nginx(Reverse Proxy)**
- **Kubernetes (Minikube)**
- **GitHub Actions (CI/CD)**
- **Terraform(Infrastructure as Code)**
- **Python Flask**
---
## 📁 Project Structure

```text
devops-ci-cd-k8s/
├── app/
│   └── app.py
├── Dockerfile
├── nginx/
│   └── default.conf
├── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── nginx-deployment.yaml
├── terraform/
│   └── main.tf
├── .github/workflows/
│   └── ci.yml
└── README.md

```
---

## 📦 How It Works

1. Code is pushed to GitHub.
2. GitHub Actions builds a Docker image.
3. The image is pushed to Docker Hub.
4. Kubernetes (Minikube) pulls the image and deploys the app.
5. Nginx routes traffic to Flask
6. Terraform provisions Kubernetes resources 

---

## ⚙️ CI Pipeline

- Triggered on push to `main`
- Builds Docker image
- Pushes image to Docker Hub

---
## 🚀 Deploy Using Terraform (Recommended)

 ```bash
 cd terraform
 terraform init
 terraform apply
 ```
---
Access application:
 ```bash
 minikube service flask-terraform-service
 ```
To clean resources:
 ```bash
 terraform destroy
 ```
🛠 Kubernetes YAML (Optional / Learning)

Raw Kubernetes manifests are included for reference:
 ```bash
 kubectl apply -f k8s/
 ```
---
## 📊 Monitoring

## Prometheus and Grafana are used for basic Kubernetes monitoring.

Install monitoring stack:
 ```bash
 helm install monitoring prometheus-community/kube-prometheus-stack
 ```
Access Grafana:
 ```bash
 kubectl port-forward svc/monitoring-grafana 3000:80
 ```
Open in browser:
 ```bash
 http://localhost:3000
 ```
Username:
 ```bash
admin
 ```
Retrieve Grafana password:
 ```bash
kubectl get secret monitoring-grafana -o jsonpath="{.data.admin-password}" | base64 --decode
 ```
