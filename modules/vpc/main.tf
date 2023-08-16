resource "aws_vpc" "demo_vpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "demo_vpc_subnets" {
  count = length(var.demo_vpc_subnets)

  vpc_id                  = aws_vpc.demo_vpc.id
  cidr_block              = var.demo_vpc_subnets[count.index]
  availability_zone      = var.demo_vpc_az 
  map_public_ip_on_launch = true
}

#output "vpc_id" {
#  value = module.demo_vpc.vpc_id
#}
#
#output "subnet_ids" {
#  value = module.demo_vpc.subnet_ids
#}
