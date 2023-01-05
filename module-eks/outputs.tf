output "eks_vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.sandbox.id
}

# VPC Public Subnets
output "eks_public_subnets" {
  description = "List of IDs of public subnets"
  value       = [for subnet in aws_subnet.public_subnets : subnet.id]
}

output "cluster_id" {
  description = "Cluster ID"
  value       = aws_eks_cluster.sandbox.id
}

output "cluster_name" {
  description = "Cluster Name"
  value       = aws_eks_cluster.sandbox.name
}