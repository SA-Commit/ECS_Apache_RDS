# 🚀 Apache on AWS ECS with RDS, Terraform, Jenkins CI/CD & OIDC

This project deploys a containerized Apache application on AWS ECS (Fargate) backed by Amazon RDS, provisioned via Terraform, monitored with Datadog and Splunk, and integrated with Jenkins CI/CD using OIDC authentication.

## 📦 Features

- Apache app containerized with Docker
- ECS Fargate deployment via Terraform
- RDS MySQL backend with Secrets Manager
- CI/CD pipeline using Jenkins and OIDC
- Monitoring with Datadog and Splunk
- Modular Terraform codebase

## 🧱 Infrastructure Overview

- VPC with public/private subnets
- ECS Cluster and Service
- RDS Instance (MySQL)
- IAM roles for ECS and Jenkins OIDC
- Secrets Manager for DB credentials
- CloudWatch Logs + Monitoring integrations

Project Structure
-------------------------
apache-ecs-rds-terraform/
├── Dockerfile
├── Jenkinsfile
├── README.md
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── ecs.tf
│   ├── rds.tf
│   ├── network.tf
│   ├── secrets.tf
│   ├── iam.tf
│   └── monitoring.tf
└── public-html/
    └── index.php
