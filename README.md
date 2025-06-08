# SolarAfrica Tech Web Application

A modern, cloud-deployed web application for a fictional solar technology company, demonstrating cloud infrastructure and deployment expertise.

## 🌟 Features

- **Modern Web Interface**: Clean, responsive design optimized for all devices
- **Cloud Infrastructure**: Deployed on AWS using best practices
- **Containerized Application**: Docker-based deployment for consistency
- **High Availability**: Load balanced architecture for reliability
- **Scalable Architecture**: Built to handle varying traffic loads

## 🛠️ Technology Stack

### Frontend
- HTML5
- CSS3
- JavaScript
- Responsive Design

### Infrastructure
- **Containerization**: Docker
- **Cloud Platform**: AWS
- **Container Orchestration**: Amazon ECS (Fargate)
- **Load Balancing**: Application Load Balancer (ALB)
- **Networking**: VPC, Security Groups
- **Domain**: Custom domain configuration

## 🚀 Deployment Architecture

```
[Client] → [Route 53] → [Application Load Balancer] → [ECS Fargate] → [Container]
```

## 📋 Prerequisites

- AWS Account with appropriate permissions
- Docker installed locally
- AWS CLI configured
- Basic understanding of containerization and cloud concepts

## 🔧 Setup and Deployment

1. **Local Development**
   ```bash
   # Clone the repository
   git clone https://github.com/David-Ibe/SolarAfrica-Tech.git
   cd SolarAfrica-Tech

   # Build Docker image
   docker build -t solarafrica-tech .

   # Run locally
   docker run -p 80:80 solarafrica-tech
   ```

2. **AWS Deployment**
   ```bash
   # Push to ECR
   aws ecr create-repository --repository-name solarafrica-tech
   docker tag solarafrica-tech:latest [AWS_ACCOUNT_ID].dkr.ecr.[REGION].amazonaws.com/solarafrica-tech:latest
   docker push [AWS_ACCOUNT_ID].dkr.ecr.[REGION].amazonaws.com/solarafrica-tech:latest

   # Deploy to ECS
   aws ecs create-cluster --cluster-name solarafrica-cluster
   # Create task definition and service using AWS Console or CLI
   ```

## 🔒 Security Features

- SSL/TLS encryption
- Security groups configuration
- IAM roles and policies
- Network ACLs
- WAF integration (optional)

## 📊 Monitoring and Maintenance

- CloudWatch metrics
- ECS service auto-scaling
- Health checks
- Log management

## 🎯 Project Goals

- Demonstrate cloud deployment expertise
- Showcase containerization skills
- Implement scalable architecture
- Practice infrastructure as code
- Follow AWS best practices

## 👤 Author

David Ibe
- GitHub: [@David-Ibe](https://github.com/David-Ibe)
- LinkedIn: [Your LinkedIn Profile]

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- AWS Documentation
- Docker Documentation
- ECS Best Practices 