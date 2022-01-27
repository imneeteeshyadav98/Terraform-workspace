#vpc Creation using Terraform
resource "aws_vpc" "staging" {
    cidr_block = "173.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = "true"
    enable_dns_support = "true"
    enable_classiclink = "false"
    tags = {
      "Name" = "Boostmlse-staging"
    }
  
}
#Public subnet 1
resource "aws_subnet" "Boostmlse-staging-public-1" {
    vpc_id = aws_vpc.staging.id
    cidr_block = "173.0.0.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-south-1a"
    tags = {
      "Name" = "Boostmle-staging-public-1"
    }
  
}
#public subnet 2
resource "aws_subnet" "Boostmlse-staging-public-2" {
    vpc_id = aws_vpc.staging.id
    cidr_block = "173.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-south-1b"
    tags = {
      "Name" = "Boostmle-staging-public-2"
    }
  
}
#public subnet 3
resource "aws_subnet" "Boostmlse-staging-public-3" {
    vpc_id = aws_vpc.staging.id
    cidr_block = "173.0.2.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-south-1c"
    tags = {
      "Name" = "Boostmle-staging-public-3"
    }
  
}


#private subnet 1
resource "aws_subnet" "Boostmlse-staging-private-1" {
    vpc_id = aws_vpc.staging.id
    cidr_block = "173.0.3.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-south-1a"
    tags = {
      "Name" = "Boostmle-staging-private-1"
    }
  
}
#private subnet 2
resource "aws_subnet" "Boostmlse-staging-private-2" {
    vpc_id = aws_vpc.staging.id
    cidr_block = "173.0.4.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-south-1b"
    tags = {
      "Name" = "Boostmle-staging-private-2"
    }
  
}

#private subnet 3
resource "aws_subnet" "Boostmlse-staging-private-3" {
    vpc_id = aws_vpc.staging.id
    cidr_block = "173.0.5.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-south-1c"
    tags = {
      "Name" = "Boostmle-staging-private-3"
    }
  
}
