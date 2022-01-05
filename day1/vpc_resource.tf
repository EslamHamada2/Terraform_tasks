resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.customer}-${var.env_name}-vpc"
  }
}


resource "aws_instance" "ec2_instance1" {
  ami = "ami-04dd4500af104442f"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet1.id

  tags = {
    Name = "instance1"
  }
}

resource "aws_instance" "ec2_instance2" {
  ami = "ami-04dd4500af104442f"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet2.id

  tags = {
    Name = "instance2"
  }
}

resource "aws_db_subnet_group" "db" {
  name       = "main_db_subnet_group"
  subnet_ids = [aws_subnet.private_subnet3.id, aws_subnet.private_subnet4.id]

  tags = {
    Name = "DB_subnet_group"
  }
}

resource "aws_db_instance" "default_db" {
  allocated_storage    = 10
  db_subnet_group_name     = "${aws_db_subnet_group.db.name}"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "admin"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}