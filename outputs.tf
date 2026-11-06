output "vpc_id" {
  description = "The VPC ID."
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs by availability zone."
  value       = { for az, subnet in aws_subnet.public : az => subnet.id }
}

output "private_subnet_ids" {
  description = "Private subnet IDs by availability zone."
  value       = { for az, subnet in aws_subnet.private : az => subnet.id }
}

