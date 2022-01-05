resource "aws_instance" "ec2_instance1" {
  ami = "ami-04dd4500af104442f"
  instance_type = "t2.micro"
  subnet_id = var.public_subnet_id

  tags = {
    Name = "${var.customer}-${var.env_name}-ec2_instance"
  }
}