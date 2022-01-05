resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = upper("${var.customer}-${var.env_name}-vpc")
  }
}