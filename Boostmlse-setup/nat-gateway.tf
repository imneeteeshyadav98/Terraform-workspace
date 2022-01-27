resource "aws_eip" "Boostmles-staging-natgw" {
    vpc=true
}
resource "aws_nat_gateway" "Boostmlse-staging-nat-gw" {
  allocation_id = aws_eip.Boostmles-staging-natgw.id
  subnet_id = aws_subnet.Boostmlse-staging-public-1.id
  depends_on = [
    aws_internet_gateway.Boostmles-staging-igw
  ]
  tags = {
    "Name" = "Boostmlse-staging-nat-gw"
  }
}

resource "aws_route_table" "Boostmles-staging-private-rt" {
    vpc_id = aws_vpc.staging.id
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.Boostmlse-staging-nat-gw.id
    }
  tags = {
    "Name" = "Boostmlse-staging-private-rt"
  }
}

resource "aws_route_table_association" "Boostmles-staging-private-1-a" {
    subnet_id = aws_subnet.Boostmlse-staging-private-1.id
    route_table_id = aws_route_table.Boostmles-staging-private-rt.id
  
}
resource "aws_route_table_association" "Boostmles-staging-private-1-b" {
    subnet_id = aws_subnet.Boostmlse-staging-private-2.id
    route_table_id = aws_route_table.Boostmles-staging-private-rt.id
  
}
resource "aws_route_table_association" "Boostmles-staging-private-1-c" {
    subnet_id = aws_subnet.Boostmlse-staging-private-3.id
    route_table_id = aws_route_table.Boostmles-staging-private-rt.id
  
}