# Terraform AWS Internet Gateway Module (Customised)

This module provisions an AWS Internet Gateway and associates it with a specified VPC.

## Resources Created
* AWS Internet Gateway
* (Optional) Tags for the Internet Gateway
* (Optional) VPC association

## Inputs
* vpc_id (Mandatory): The ID of the VPC to attach the Internet Gateway to.
* igw_tags (Optional): Map of tags to assign to the Internet Gateway. Default is empty.

## Outputs
* internet_gateway_id: The ID of the Internet Gateway created.
* internet_gateway_arn: The ARN of the Internet Gateway.

## Example Usage

```hcl
module "internet_gateway" {
  source   = "../internet-gateway"
  vpc_id   = "vpc-xxxxxxx"
  igw_tags = {
    Environment = "dev"
    Owner       = "your-name"
  }
}
```

## Notes
- The Internet Gateway enables communication between instances in your VPC and the internet.
- Make sure your VPC route tables are configured to use the Internet Gateway for public subnets.

## License
MIT
