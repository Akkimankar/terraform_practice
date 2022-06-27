provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web-server" {
  ami = "ami-0cff7528ff583bf9a"
  instance_type = "t3.micro"
  security_groups = ["default"]
  key_name = "terraform"
}