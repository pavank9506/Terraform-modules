resource "aws_internet_gateway" "main" {
  vpc_id = var.vpc_id

  tags = var.igw_tags
    {
        Name = var.igw_tags 
    
    }
    }