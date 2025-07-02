# AutoOps – DevOps Automation Using Shell Scripting

> Lightweight automation project for real-world DevOps use cases using only **Shell Scripting**, **Docker**, and optionally **Kubernetes**.

---

## 🚀 What This Project Does

✅ Monitors service health and restarts services  
✅ Tracks system disk usage and logs alerts  
✅ Builds and pushes Docker images  
✅ Deploys containerized apps to Kubernetes  
✅ Runs entirely on EC2 with cron and shell scripts  
✅ CI/CD-ready with Jenkins or GitLab support (extendable)

---

📁 Folder Structure ``` autoops-shell-devops/ ├── monitor/ │ ├── health_check.sh # Monitors service and restarts if down │ └── resource_check.sh # Monitors disk space ├── deploy/ │ ├── build_and_push.sh # Builds and pushes Docker image │ └── deploy_k8s.sh # (Optional) Updates Kubernetes deployment ├── scripts/ # (Optional) Custom automation scripts ├── Dockerfile # Simple NGINX web app └── index.html # Web app homepage ``` 

## ⚙️ How to Use

### 🖥️ Health Monitoring

Run manually or schedule with cron:
```bash
./monitor/health_check.sh
./monitor/resource_check.sh

Add to crontab
*/5 * * * * /full/path/monitor/health_check.sh
*/10 * * * * /full/path/monitor/resource_check.sh

🐳 Docker Build & Push
Update with your DockerHub username in the script:
./deploy/build_and_push.sh
