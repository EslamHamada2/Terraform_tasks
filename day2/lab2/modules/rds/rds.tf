resource "aws_db_subnet_group" "db" {
  name       = "main_db_subnet_group"
  subnet_ids = [var.private_subnet1_id, var.private_subnet2_id]

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