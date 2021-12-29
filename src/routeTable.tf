resource "aws_route_table" "route_table_public" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
    
  }
  tags = {
      Name = "A_route_public"
      JT_Name = "Gabriel Machado"
  }
  depends_on = [aws_internet_gateway.main]

}

resource "aws_route_table" "route_table_private" {
    vpc_id = aws_vpc.main_vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat_private.id 

    }
    tags = {
        Name = "A_route_private"
        JT_Name = "Gabriel Machado"
    }
    depends_on = [aws_nat_gateway.nat_private]

}

resource "aws_route_table_association" "public_association" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.route_table_public.id
}

resource "aws_route_table_association" "private_association" {
    subnet_id = aws_subnet.private_subnet.id
    route_table_id = aws_route_table.route_table_private.id
}