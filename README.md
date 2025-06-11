# 🔐 Secure Web App Deployment in AWS Private Subnet using Bastion Host & ALB

## 🧠 Project Overview

This project demonstrates how to securely deploy a simple web application in a **private subnet** using:
- **Bastion Host (Public EC2)** for SSH access
- **Application Load Balancer** to expose the app publicly
- **Security Groups** and **NACLs** to manage secure communication

No internet access is given to the private instance directly—only via ALB or Bastion Host.

---

## 🚀 Tech Stack & Services Used

- Amazon VPC
- Public & Private Subnets
- EC2 (Bastion Host + Web Server)
- Internet Gateway & Route Tables
- Application Load Balancer (ALB)
- Target Groups
- Security Groups (SGs) & NACLs
- Python (Simple HTTP server)

---

## 🏗️ Architecture Diagram

![Architecture](architecture/architecture-diagram.png)

---

## 🛠️ Steps Performed

1. **Create a VPC** with public & private subnets.
2. **Launch Bastion Host EC2** in public subnet (with public IP).
3. **Launch Web EC2** in private subnet (no public IP).
4. **SSH into Web EC2** via Bastion using private IP.
5. **Install Python & serve HTML** on the web EC2.
6. **Create ALB** targeting private EC2.
7. **Expose Web App** publicly via ALB DNS.
8. **Secure with SGs/NACLs**.

---

## 🌐 Output Screenshot

![Final Output](screenshots/20-congrats-app-is-running.png)

---

## 📁 Folder Structure

- `architecture/`: Contains architecture diagrams.
- `screenshots/`: Step-by-step screenshots (20 total).
- `scripts/`: Contains startup scripts & HTML used on EC2.

---

## 🤯 Key Concepts Learned

- How to set up a secure environment using VPC & subnets.
- Routing HTTP traffic securely via ALB to private EC2.
- Practical use of Bastion Host for private EC2 access.
- Configuring Health Checks and Target Groups.

---

## ❗ Challenges Faced

- ALB health check failing due to port mismatch (Python served on 8000 but target group was 80).
- SSH not working until Bastion Security Group correctly configured.
- Page not loading until inbound rule for HTTP added on ALB SG.

---

## ✅ Final Result

Web app is successfully running at:
```
http://<your-alb-dns>.amazonaws.com
```

---

## 📌 To-Do (Optional Improvements)

- Use Route 53 with a domain name
- Add HTTPS with ACM SSL cert
- Automate setup via CloudFormation or Terraform

---

## 📸 Full Screenshot Journey

> Total: 20 images  
Documented step-by-step: From VPC setup to web app launch via ALB.

---

## 📄 License

MIT License
