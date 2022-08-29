resource "aws_instance" "web-server" {
  ami = "var.ami_id"  
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "devops-key"
 }

 resource "aws_instance" "app-server" {
  ami = "ami-0568773882d492fc8"  
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "devops-key"
 }

 variable "ami_id" {
  type = string
  default = "ami-0568773882d492fc8"
  description = "AMI_ID"
 }