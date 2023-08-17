provider "aws" {
  region = "us-west-2"
}

terraform {
  required_version = "~> 1.5.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.12.0"
    }
  }
}

# --- Create ec2 Instance ---

resource "aws_instance" "demo_ec2" {
  ami = var.ami
  instance_type = var.ec2_type
  tags = {
    Name = var.ec2_name  
  }
}



#resource "aws_instance" "demo_ec2" {
#  ami = "ami-04e35eeae7a7c5883"
#  instance_type =  "t2.micro"
#}