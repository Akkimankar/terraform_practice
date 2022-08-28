resource "aws_instance" "web-server" {
  ami =   
  instance_type = "t2.micro"
  name          = "example-env"
}