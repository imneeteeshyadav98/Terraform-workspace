resource "aws_instance" "Ec2instance" {
    ami = data.aws_ami.amazon-linux.id
    instance_type = var.instance_type
    user_data = file("${path.module}/install.sh")
    key_name = var.instance_keypair
    vpc_security_group_ids = [ aws_security_group.jenkins-server.id ]
    tags = {
      "Name" = "Ec2-demo"
    }
  
}