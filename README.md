# AWS Infrastructure Automation with Terraform

## Overview
This project demonstrates infrastructure automation using Terraform on AWS. It provisions an EC2 instance, configures security groups, installs Nginx using Linux user-data automation, and exposes a simple web application.

## Purpose
The goal is to showcase SRE/DevOps skills, including Infrastructure as Code, AWS provisioning, Linux automation, and deployment reliability.

## Tech Stack
- AWS EC2
- AWS Security Groups
- Terraform
- Linux Bash Scripting
- Nginx
- GitHub

## Required Tools
- Terraform
- AWS CLI
- Git

## Architecture
GitHub Repository → Terraform → AWS EC2 → Linux User Data Script → Nginx Web Server

## What This Project Demonstrates
- Infrastructure as Code using Terraform
- Automated EC2 provisioning
- Linux server bootstrapping using Bash
- Secure SSH access using a restricted IP
- HTTP access through security groups
- Repeatable and version-controlled cloud infrastructure

## Commands

```bash
cd terraform
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```
## Check Output

```bash
http://EC2_PUBLIC_IP
```

### Expected Output

```bash
SRE Terraform Automation 
```
