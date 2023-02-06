# Terraform Output Values
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#attributes-reference
# EC2 Instance Public IP
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.task-1.public_ip
}

# EC2 Instance Public DNS
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value       = aws_instance.task-1.public_dns
}