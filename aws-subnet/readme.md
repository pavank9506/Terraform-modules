# Terraform AWS Subnet Module (Customised)

This module provisions one or more AWS subnets within a specified VPC.

## Resources Created
* AWS Subnet(s)
* (Optional) Tags for each subnet

## Inputs
* vpc_id (Mandatory): The ID of the VPC to create the subnet(s) in.
* subnet_cidrs (Mandatory): List of CIDR blocks for the subnet(s).
* availability_zones (Optional): List of availability zones for the subnet(s). If not specified, AWS will choose automatically.
* map_public_ip_on_launch (Optional): Whether to assign a public IP on launch. Default is false.
* subnet_tags (Optional): Map of tags to assign to each subnet. Default is empty.

## Outputs
* subnet_ids: List of IDs of the subnets created.
* subnet_arns: List of ARNs of the subnets created.

## Example Usage

```hcl
module "subnet" {
  source                = "../aws-subnet"
  vpc_id                = "vpc-xxxxxxx"
  subnet_cidrs          = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones    = ["us-east-1a", "us-east-1b"]
  map_public_ip_on_launch = true
  subnet_tags = {
    Environment = "dev"
    Owner       = "your-name"
  }
}
```

## Notes
- Ensure the CIDR blocks do not overlap with other subnets in the VPC.
- Use map_public_ip_on_launch = true for public subnets.

## License
MIT
