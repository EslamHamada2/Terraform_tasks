##Internet_gateway_resource
resource "aws_internet_gateway" "default_IGW" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "${var.customer}-${var.env_name}-default_internet_gateway"
  }
}

##route tables
resource "aws_route_table" "private_route_tabel" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "${var.customer}-${var.env_name}-private_route_table"
  }
}

resource "aws_route_table" "private_nat_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.default_nat_gateway.id
  }

  tags = {
    Name = "${var.customer}-${var.env_name}-private_nat_route_table"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main_vpc.id

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
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet2_association" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_subnet1_association" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_nat_route_table.id
}

resource "aws_route_table_association" "private_subnet2_association" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_nat_route_table.id
}

resource "aws_route_table_association" "private_subnet3_association" {
  subnet_id      = aws_subnet.private_subnet3.id
  route_table_id = aws_route_table.private_route_tabel.id
}

resource "aws_route_table_association" "private_subnet4_association" {
  subnet_id      = aws_subnet.private_subnet4.id
  route_table_id = aws_route_table.private_route_tabel.id
}

##elastic IP
resource "aws_eip" "default_IP" {  
  vpc = true
}

##nat_gateway_resource
resource "aws_nat_gateway" "default_nat_gateway" {
  allocation_id = aws_eip.default_IP.id
  subnet_id     = aws_subnet.public_subnet1.id

  tags = {
    Name = "${var.customer}-${var.env_name}-default_nat_gateway"
  }
  depends_on = [aws_internet_gateway.default_IGW]
}
