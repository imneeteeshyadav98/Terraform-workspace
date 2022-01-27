resource "aws_internet_gateway" "Boostmles-staging-igw" {
    vpc_id = aws_vpc.staging.id
    tags = {
        Name="Boostmlse-staging-igw"
    }
  
}