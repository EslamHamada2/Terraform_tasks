resource "aws_subnet" "subnet" {
  count = length(var.subnets_cidr)
  vpc_id     = var.id_vpc
  cidr_block = var.subnets_cidr[count.index]
  availability_zone = "eu-west-1a"

  tags = {
    Name = "${var.customer}-${var.env_name}-subnet"
  }
}
