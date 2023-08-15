module "demo_ec2_dev" {
  source = "./modules/ec2"
}

# --- Variables ---
variable "ami" {
  type = string
  default = "ami-04e35eeae7a7c5883"
}
variable "ec2_type" {
  type = string
  default = "t2.micro"
}