resource "aws_instance" "web-server" {
  ami = "var.ami_id"  
  instance_type = "var.instance_type"
  security_groups = ["default"]
  key_name = "devops_key"
 }

 resource "aws_instance" "app-server" {
  ami = "ami-0568773882d492fc8"  
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "devops-key"
 }

 variable "region" {
  default = "us-east-2"
}

variable "ami" {
  default = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "security_groups" {
  type = list(string)
  default =  ["default"]
}

variable "key_name" {
  default = "terraform"
}


variable ""





