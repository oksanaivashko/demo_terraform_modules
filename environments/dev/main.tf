# --- Terraform module to create ec2 Insance ---

module "demo_ec2" {
  source = "../../modules/ec2"
  instance_count = 3
  instance_name = "demo_ec2"
  ami = "ami-04e35eeae7a7c5883"
}

# --- Terraform module to create sg ---



# --- Terraform module to vpc ---

#module "demo_dev_vpc" {
#  source = "../../modules/vpc"
#  cidr_block    = "10.0.0.0/16"
#  demo_vpc_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
#  demo_vpc_az   = "us-west-2a"
#}