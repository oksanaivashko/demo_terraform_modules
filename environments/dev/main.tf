module "demo_ec2_dev" {
  source = "../../modules/ec2"

  ami = var.ami
  ec2_type = var.ec2_type
  ec2_name = var.ec2_name
  output "demo_dev_ec2" {
    value = aws_instance.demo_dev_ec2.id
  }
}

