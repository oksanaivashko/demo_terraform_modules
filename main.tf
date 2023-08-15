module "demo_ec2_dev" {
  source = "./modules/ec2"

  ami = var.ami
  ec2_type = var.ec2_type
  
  tags = {
    Name = var.ec2_name
  }
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
variable "ec2_name" {
  type = string
  default = "demo_ec2"
}