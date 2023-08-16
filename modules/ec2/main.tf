provider "aws" {
  region = "us-west-2"
}

terraform {
  required_version = "~> 1.5.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.53.0"
    }
  }
}

# --- Create ec2 Instance ---

resource "aws_instance" "demo_ec2" {
  ami = var.ami
  instance_type = var.ec2_type
  security_groups = [aws_security_group.demo_sg.name]
  tags = {
    Name = var.ec2_name  
  }
}