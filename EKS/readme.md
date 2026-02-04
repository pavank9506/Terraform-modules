# AWS EKS Terraform Module

This module creates an AWS EKS Cluster and Node Group with configurable networking, roles, and scaling.

## Inputs
- `name`: The name of the EKS cluster
- `cluster_role_arn`: IAM role ARN for the cluster
- `kubernetes_version`: Kubernetes version
- `subnet_ids`: List of subnet IDs
- `security_group_ids`: List of security group IDs
- `tags`: Map of tags
- `node_group_name`: Node group name
- `node_role_arn`: IAM role ARN for node group
- `desired_size`: Desired node count
- `max_size`: Maximum node count
- `min_size`: Minimum node count
- `instance_types`: List of instance types

## Outputs
- `eks_cluster_id`: EKS cluster name
- `eks_cluster_endpoint`: EKS cluster endpoint
- `eks_cluster_arn`: EKS cluster ARN
- `eks_node_group_id`: Node group ID
