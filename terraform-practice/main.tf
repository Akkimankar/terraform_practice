resource "aws_vpc" "vpc1" {
  cidr_block = "10.10.0.0/16"
  tags = {
    "Name" = "my-vpc" 
  } 
}

resource "aws_subnet" "private" {
  
}