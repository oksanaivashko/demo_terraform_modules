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

# --- Create secutiy group ---
resource "aws_security_group" "demo_sg" {
  name        = "demo_sg"
  description = "Thsi security group just to demonstrate demo for terraform modules"
  
  # --- Ingress rules (inbound traffic) ---
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
  
  # --- Egress rules (outbound traffic) ---
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" 
    cidr_blocks = ["0.0.0.0/0"]
  }
}