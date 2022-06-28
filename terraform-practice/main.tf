resource "aws_vpc" "vpc1" {
  cidr_block = "10.10.0.0/16"
  tags = {
    "Name" = "my-vpc" 
  } 
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.10.0.0/20"
  availability_zone = ""
  tags ={
    "Name" = "private_subnet"
  }
}
