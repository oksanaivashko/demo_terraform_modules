variable "cidr_block" {
  description = "CIDR block for the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "demo_vpc_subnets" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/2" ]
}

variable "demo_vpc_az" {
  description = "az for vpc"
  type = string
  default = "us-west-2a"
}