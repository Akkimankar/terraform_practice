resource "aws_instance" "web-server" {
  ami = "ami-215454545444"  
  instance_type = "t2.micro"
  name          = "example-env"
}