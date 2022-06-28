resource "aws_instance" "web-server" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = ["default"]
  key_name = "terraform"
}

resource "aws_instance" "app-server" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = ["default"]
  key_name = "terraform"
}
