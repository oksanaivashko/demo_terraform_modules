resource "aws_instance" "demo_ec2" {
  ami = "ami-04e35eeae7a7c5883"
  instance_type = "t2.micro"
  tags = {
    Name = "demo_prod_ec2"
  }
}