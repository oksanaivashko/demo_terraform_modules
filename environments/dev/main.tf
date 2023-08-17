# --- Terraform module to create ec2 Insance ---


module "demo_ec2_dev" {
  count = 5
  source = "../../modules/ec2"
}


#  ami = var.ami
#  ec2_type = var.ec2_type
#  ec2_name = var.ec2_name
#}


# --- Terraform module to create sg ---

#module "demo_dev_sg" {
#  source = "../../modules/sg"
#}

# --- Terraform module to vpc ---

#module "demo_dev_vpc" {
#  source = "../../modules/vpc"
#  cidr_block    = "10.0.0.0/16"
#  demo_vpc_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
#  demo_vpc_az   = "us-west-2a"
#}