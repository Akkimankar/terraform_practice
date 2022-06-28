resource "aws_vpc" "vpc1" {
  cidr_block = "10.10.0.0/16"
  tags = {
    "Name" = "my-vpc" 
  } 
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.10.0.0/20"
  availability_zone = "us-east-1a"
  tags ={
    "Name" = "private_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.10.16.0/20"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"
  tags ={
    "Name" = "public_subnet"
  }
}

resource "aws_internet_gateway" "igw"  {
  vpc_id = aws_vpc.vpc1.id
}

resource "aws_internet_gateway_attachment" "igw-attach" {
  vpc_id = aws_vpc.vpc1.id
  internet_gateway_id = aws_internet_gateway.igw.id
}

resource "aws_default_route_table" " {
  
}




  
}
