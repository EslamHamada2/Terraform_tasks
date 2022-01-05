##Internet_gateway_resource
resource "aws_internet_gateway" "default_IGW" {
  vpc_id = var.id_vpc

  tags = {
    Name = "${var.customer}-${var.env_name}-default_internet_gateway"
  }
}

##route tables
resource "aws_route_table" "private_route_tabel" {
  vpc_id = var.id_vpc

  tags = {
    Name = "${var.customer}-${var.env_name}-private_route_table"
  }
}
resource "aws_route_table" "public_route_table" {
  vpc_id = var.id_vpc

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default_IGW.id
  }

  tags = {
    Name = "${var.customer}-${var.env_name}-public_route_table"
  }
}

##associations
resource "aws_route_table_association" "public_subnet1_association" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.public_route_table.id
}
resource "aws_route_table_association" "private_subnet1_association" {
  subnet_id      = var.private_subnet1_id
  route_table_id = aws_route_table.private_route_tabel.id
}
resource "aws_route_table_association" "private_subnet2_association" {
  subnet_id      = var.private_subnet2_id
  route_table_id = aws_route_table.private_route_tabel.id
}
