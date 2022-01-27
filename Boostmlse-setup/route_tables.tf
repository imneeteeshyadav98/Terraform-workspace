resource "aws_route_table" "Boostmlse-staging-public-rt" {
    vpc_id = aws_vpc.staging.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.Boostmles-staging-igw.id
    }
  tags = {
    "Name" = "Boostmlse-staging-public-rt"
  }
}

#Create association rules......

resource "aws_route_table_association" "Boostmles-staging-public-1-a" {
    subnet_id= aws_subnet.Boostmlse-staging-public-1.id
    route_table_id=aws_route_table.Boostmlse-staging-public-rt.id
}
resource "aws_route_table_association" "Boostmles-staging-public-1-b" {
    subnet_id= aws_subnet.Boostmlse-staging-public-2.id
    route_table_id=aws_route_table.Boostmlse-staging-public-rt.id
}
resource "aws_route_table_association" "Boostmles-staging-public-1-c" {
    subnet_id= aws_subnet.Boostmlse-staging-public-3.id
    route_table_id=aws_route_table.Boostmlse-staging-public-rt.id
}