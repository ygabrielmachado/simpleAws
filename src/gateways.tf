resource "aws_internet_gateway" "main" {
  vpc_id          = aws_vpc.main_vpc.id
  tags            = {
    Name          = "A_igw_lab1"
    Owner         = "Project simpleAWS"
  }
}

resource "aws_nat_gateway" "nat_private" {
  subnet_id         = aws_subnet.private_subnet.id
  tags = {
      Name          = "A_nat_gw"
      Owner         = "Project simpleAWS"
  }
  connectivity_type = "private"
}
