output "instance_id" {
  description = "Id of the ec2 instnace"
  value = aws_instance.demo_ec2
}

output "public_ip" {
  description = "public ip address of the ec2 instance"
  value = aws_instance.demo_ec2
}

output "private_ip" {
  description = "private ip address of the ec2 instance"
  value = aws_instance.demo_ec2
}

output "vpc_id" {
  description = "Id of the vpc where ec2 instance created"
  value = aws_instance.demo_ec2
}