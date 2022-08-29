resource "aws_vpc" "vpc1" {
  cidr_block = var.cidr_vpc
   tags = {
    "Name" = "my-vpc"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = var.cidr_private
    availability_zone = var.zone_private
  tags ={
    "Name" = "private_subnet"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = var.cidr_public
  availability_zone = var.zone_public
  map_public_ip_on_launch = "true"
  tags ={
    "Name" = "public_subnet"
  }
}

resource "aws_internet_gateway" "igw"  {
}

resource "aws_internet_gateway_attachment" "igw-attach" {
  vpc_id = aws_vpc.vpc1.id
  internet_gateway_id = aws_internet_gateway.igw.id
}

resource "aws_default_route_table" "default_rt" {
  default_route_table_id = aws_vpc.vpc1.default_route_table_id
  route {
     cidr_block = "0.0.0.0/0"
     gateway_id = aws_internet_gateway.igw.id
  }
}







resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "vpc"
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "var.cidr_block"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc1.id
  internet_gateway_id = aws_internet_gateway
}

resource "aws_route_table" "example" {
  vpc_id = aws_vpc.example.id

  route {
    cidr_block = "10.0.1.0/24"
    gateway_id = aws_internet_gateway.example.id
  }

  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
  }






