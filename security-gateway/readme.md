

# Terraform AWS Security Group Module (Customised)

This module is going to create the following resources:

* AWS Security Group
* Ingress rules (customizable)
* Egress rules (customizable)
* Tags for the security group

# Inputs
* sg_name (Mandatory): User must supply the security group name.
* vpc_id (Mandatory): User must supply the VPC ID to attach the security group.
* description (Optional): Description for the security group. Defaults to "Managed by Terraform".
* ingress_rules (Optional): List of ingress rule objects. Each object supports:
  * from_port (Mandatory): Start port for the rule.
  * to_port (Mandatory): End port for the rule.
  * protocol (Mandatory): Protocol (e.g., "tcp", "udp", "icmp", or "-1" for all).
  * cidr_blocks (Mandatory): List of allowed CIDR blocks.
  * description (Optional): Description for the rule.
* egress_rules (Optional): List of egress rule objects. Each object supports:
  * from_port (Mandatory): Start port for the rule.
  * to_port (Mandatory): End port for the rule.
  * protocol (Mandatory): Protocol (e.g., "tcp", "udp", "icmp", or "-1" for all).
  * cidr_blocks (Mandatory): List of allowed CIDR blocks.
  * description (Optional): Description for the rule.
* tags (Optional): Map of tags to assign to the security group. Default is empty.

# Outputs
* security_group_id: The ID of the security group created.
* security_group_name: The name of the security group created.

# Example Usage

```hcl
module "security_group" {
  source = "../sg"

  sg_name     = "my-sg"
  vpc_id      = "vpc-xxxxxxx"
  description = "Security group for my application"


  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all outbound traffic"
    }
  ]

  tags = {
    Environment = "dev"
    Owner       = "your-name"
  }
}
```

