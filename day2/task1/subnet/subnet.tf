data "aws_vpc" "this"{
    filter{
        name = "tag:Name"
        values = ["${var.customer}-${var.env_name}-vpc"]
    }
}


resource "aws_subnet" "public_subnet" {
  vpc_id     = data.aws_vpc.this.id
  cidr_block = var.subnet_cidr
  availability_zone = "eu-west-1a"

  tags = {
    Name = "${var.customer}-${var.env_name}-public_subnet"
  }
}