resource "aws_vpc" "main_vpc" {
  cidr_block        = "10.0.0.0/16"
  tags              = {
    Name            = "A_vpc_lab1"
    Owner           = "Project simpleAWS"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name                  = "A_public_subnet"
    Owner                 = "Project simpleAWS"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = true

  tags = {
    Name            = "A_private_subnet"
    Owner           = "Project simpleAWS"
  } 
}