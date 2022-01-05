resource "aws_instance" "ec2_instance1" {
  ami = "ami-04dd4500af104442f"
  instance_type = "t2.micro"
  subnet_id = var.subnet_id
  count = var.create_ec2 ? 1:0

  tags = {
    Name = "${var.customer}-${var.env_name}-ec2_instance"
  }
}
