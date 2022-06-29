data "aws_subnet" "public_subnet" {
  vpc_id = "vpc-04ac75991bf7e4bfd"
  availability_zone = "us-east-1b"
}
resource "aws_instance" "instance1" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.sg_id
  tags = {
    "Name" = "instance1"
  }
  subnet_id = var.private_subnet_id
}

resource "aws_instance" "instance2" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.sg_id
  tags = {
    "Name" = "instance2"
  }
  subnet_id = var.public_subnet_id
}
