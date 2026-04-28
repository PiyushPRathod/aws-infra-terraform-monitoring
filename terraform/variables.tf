variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  default     = "ami-0c02fb55956c7d316"
}

variable "my_ip" {
  description = "Your public IP for SSH access"
  default     = "YOUR_PUBLIC_IP/32"
}
