resource "aws_security_group" "Boostmlse-staging-ssh" {
    vpc_id = aws_vpc.staging.id
    name = "Boostmlse-staging-ssh"
    description = "ssh configured by terraforms"
    ingress {
        description = "Allow Port 22"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "Allow all ip and ports outbound"    
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "Boostmlse-staging-ssh"
    }
}
