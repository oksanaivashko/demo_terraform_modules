output "vpc_id" {
  description = "Id of the created VPC"
  value       = module.demo_vpc.vpc_id
}

output "subnet_ids" {
  description = "List of Ids of the created subnets"
  value       = module.demo_vpc.subnet_ids
}