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
  default = "ec2_demo"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type = number
}
