resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.subnets_cidr[0]
  availability_zone = "eu-west-1a"

  tags = {
    Name = "${var.customer}-${var.env_name}-public_subnet1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.subnets_cidr[1]
  availability_zone = "eu-west-1b"

  tags = {
    Name = "${var.customer}-${var.env_name}-public_subnet2"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.subnets_cidr[2]
  availability_zone = "eu-west-1a"

  tags = {
    Name = "${var.customer}-${var.env_name}-private_subnet1"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.subnets_cidr[3]
  availability_zone = "eu-west-1b"

  tags = {
    Name = "${var.customer}-${var.env_name}-private_subnet2"
  }
}

resource "aws_subnet" "private_subnet3" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.subnets_cidr[4]
  availability_zone = "eu-west-1a"

  tags = {
    Name = "${var.customer}-${var.env_name}-private_subnet3"
  }
}

resource "aws_subnet" "private_subnet4" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.subnets_cidr[5]
  availability_zone = "eu-west-1b"

  tags = {
    Name = "${var.customer}-${var.env_name}-private_subnet4"
  }
}