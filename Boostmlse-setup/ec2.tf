resource "aws_instance" "Boostmlse-staging-ec2" {
    ami = data.aws_ami.amazon-linux.id
    instance_type = var.instance_type
    key_name = var.instance_keypair
    subnet_id = aws_subnet.Boostmlse-staging-public-1.id
    associate_public_ip_address = true
    vpc_security_group_ids = [ aws_security_group.Boostmlse-staging-ssh.id ]
    tags = {
        "Name"="Boostmlse-staging-ec2"
    } 
}