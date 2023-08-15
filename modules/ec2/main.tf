resource "aws_instance" "demo_ec2" {
  ami = var.ami
  instance_type = var.ec2_type
  tags = {
    Name = var.ec2_name  
  }
}