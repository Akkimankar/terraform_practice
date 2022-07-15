provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web-server" {
  ami = "ami-0cff7528ff583bf9a"
  instance_type = "t3.micro"
  security_groups = ["default"]
  key_name = "terraform"
}

resource "aws_instance" "app-server" {
  ami = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "terraform"
}

ndjnjnsdvjnsfnvs