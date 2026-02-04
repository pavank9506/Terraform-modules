# ALB variables.tf
# Define input variables for the ALB module

variable "name" {
  description = "The name of the ALB."
  type        = string
}

variable "subnets" {
  description = "A list of subnet IDs to associate with the ALB."
  type        = list(string)
}

variable "security_groups" {
  description = "A list of security group IDs to associate with the ALB."
  type        = list(string)
  default     = []
}

variable "internal" {
  description = "If true, the LB will be internal."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
