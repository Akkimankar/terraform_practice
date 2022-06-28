resource "aws_instance" "web-server" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = ["default"]
  key_name = "terraform"
}

resource "aws_instance" "app-server" {
  ami = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "terraform"
}

variable "ami_id" {
    type = string
    default = "ami-0cff7528ff583bf9a"
    description = "AMI-ID"
}

variable "instance_type"
default = " t2.micro" 