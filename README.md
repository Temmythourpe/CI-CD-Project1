# CI/CD Pipeline with Jenkins, Maven & Tomcat on AWS

This project demonstrates a complete real-time DevOps CI/CD pipeline implementation using **Jenkins**, **Maven**, and **Tomcat**, running on **AWS EC2 instances**.

It covers the end-to-end setup of an automated pipeline for building and deploying Java applications with a focus on practical DevOps skills.

---

## 🚀 Project Highlights

- ✅ Provisioning EC2 instances for Jenkins and Tomcat Server
- ✅ Jenkins installation and setup
- ✅ Maven installation and Jenkins Maven plugin configuration
- ✅ Tomcat server installation and configuration
- ✅ Integration of Jenkins + Maven + Tomcat for automated deployment

---

## 📁 Project Steps

1. **Created an EC2 instance** to host Tomcat and Maven
2. **Installed and configured Jenkins**
3. **Installed Maven** on the EC2 instance and verified proper setup
4. **Installed Maven plugin in Jenkins** and configured it to recognize Maven installation
5. **Set up a Tomcat server** on the instance and ensured it runs on port 8080
6. **Integrated Tomcat with Jenkins** using the Deploy to Container plugin and configured Jenkins to deploy builds automatically via Maven

---

## 🧰 Tools & Technologies

- **AWS EC2**
- **Jenkins**
- **Apache Maven**
- **Apache Tomcat**
- **Java (OpenJDK 11/17)**
- **Linux (Amazon Linux 2 or Ubuntu)**

---

![alt text](<Screenshot 2025-06-23 153651.png>)
![alt text](<Screenshot 2025-06-23 164855.png>)


## ✅ Outcomes

- Built a fully functional CI/CD pipeline
- Automated a Build Trigger to check the repository every minute for any changes and trigger the pipeline
- Automated Java application build and deployment using Jenkins and Maven
- Gained hands-on experience with real-world DevOps practices




