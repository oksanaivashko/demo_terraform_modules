module "demo_ec2_dev" {
  source = "../modules/ec2"

  ami = var.ami
  ec2_type = var.ec2_type
}

