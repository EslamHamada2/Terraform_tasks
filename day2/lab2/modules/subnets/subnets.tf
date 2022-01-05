resource "aws_subnet" "public_subnet1" {
  vpc_id     = var.id_vpc
  cidr_block = var.public_subnet1_cidr
  availability_zone = "eu-west-1a"

  tags = {
    Name = "${var.customer}-${var.env_name}-public_subnet1"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id     = var.id_vpc
  cidr_block = var.private_subnet1_cidr
  availability_zone = "eu-west-1a"

  tags = {
    Name = "${var.customer}-${var.env_name}-private_subnet1"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id     = var.id_vpc
  cidr_block = var.private_subnet2_cidr
  availability_zone = "eu-west-1b"

  tags = {
    Name = "${var.customer}-${var.env_name}-private_subnet2"
  }
}