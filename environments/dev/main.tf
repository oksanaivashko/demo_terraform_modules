# --- Terraform module to create ec2 Insance ---

#module "demo_ec2_dev" {
#  source = "../../modules/ec2"
#
#  ami = var.ami
#  ec2_type = var.ec2_type
#  ec2_name = var.ec2_name
#}


# --- Terraform module to create sg ---

#module "demo_dev_sg" {
#  source = "../../modules/sg"
#}

# --- Terraform module to vpc ---

module "demo_dev_vpc" {
  source = "../../modules/vpc"
}