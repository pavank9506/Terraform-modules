# AWS ALB Terraform Module

This module creates an AWS Application Load Balancer (ALB) with configurable subnets, security groups, and tags.

## Inputs
- `name`: The name of the ALB
- `subnets`: List of subnet IDs
- `security_groups`: List of security group IDs
- `internal`: Whether the ALB is internal
- `tags`: Map of tags

## Outputs
- `alb_arn`: The ARN of the ALB
- `alb_dns_name`: The DNS name of the ALB
