provider "aws" {
  region = "us-east-1"
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
  count         = var.instance_count
  ami = var.ami
  instance_type = var.ec2_type
  tags = {
    Name = var.ec2_name  
  }
}



resource "aws_instance" "demo_ec2" {
  ami = "ami-0df435f331839b2d6"
  instance_type =  "t2.micro"
}