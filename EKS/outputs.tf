# EKS outputs.tf
# Output values for the EKS module

output "eks_cluster_id" {
  description = "The name of the EKS cluster."
  value       = aws_eks_cluster.this.id
}

output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster."
  value       = aws_eks_cluster.this.endpoint
}

output "eks_cluster_arn" {
  description = "The ARN of the EKS cluster."
  value       = aws_eks_cluster.this.arn
}

output "eks_node_group_id" {
  description = "The ID of the EKS node group."
  value       = aws_eks_node_group.this.id
}
