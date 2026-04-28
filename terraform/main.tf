provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "sre_sg" {
  name        = "sre-demo-security-group"
  description = "Allow SSH and HTTP traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "sre_web_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sre_sg.id]

  user_data = file("../scripts/install_nginx.sh")

  tags = {
    Name        = "sre-terraform-demo"
    Environment = "dev"
    Project     = "SRE Automation"
  }
}
