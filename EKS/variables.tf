# EKS variables.tf
# Define input variables for the EKS module

variable "name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "cluster_role_arn" {
  description = "The ARN of the IAM role that provides permissions for the EKS cluster."
  type        = string
}

variable "kubernetes_version" {
  description = "Desired Kubernetes master version."
  type        = string
  default     = "1.29"
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster."
  type        = list(string)
}

variable "security_group_ids" {
  description = "A list of security group IDs for the EKS cluster."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default     = {}
}

variable "node_group_name" {
  description = "The name of the EKS node group."
  type        = string
}

variable "node_role_arn" {
  description = "The ARN of the IAM role for the node group."
  type        = string
}

variable "desired_size" {
  description = "Desired number of worker nodes."
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes."
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum number of worker nodes."
  type        = number
  default     = 1
}

variable "instance_types" {
  description = "List of instance types for the node group."
  type        = list(string)
  default     = ["t3.medium"]
}
