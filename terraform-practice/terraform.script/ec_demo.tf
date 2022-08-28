resource "aws_instance" "web-server" {
    
  instance_type = "t2.micro"
  name          = "example-env"
}