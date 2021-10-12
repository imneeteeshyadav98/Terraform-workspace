resource "aws_instance" "awsEc2" {
    ami = "ami-041d6256ed0f2061c"
    instance_type = "t2.micro"
    user_data = file("${path.module}/install.sh")
    vpc_security_group_ids = [ aws_security_group.jenkins-server.id   ]
    tags = {
      "Name" = "Ec2 Demo"
    }
}
