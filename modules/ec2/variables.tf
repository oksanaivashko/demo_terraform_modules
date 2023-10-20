variable "ami" {
  type = string
  default = "ami-0df435f331839b2d6"
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
