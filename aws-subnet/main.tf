resource "aws_subnet" "private" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet_cidrs
  tags = var.private_subnet_tags

} 