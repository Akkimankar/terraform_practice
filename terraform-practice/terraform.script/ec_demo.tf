resource "aws_instance" "web-server" {
  ami = "ami-0568773882d492fc8"  
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "devops_key"
}