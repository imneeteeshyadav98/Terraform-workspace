variable "aws_region" {
  description = "AWS Region which you want to create Resource"
  type = string
  default = "ap-south-1"
}

variable "instance_type" {
  description = "Ec2 instance Type"
  type = string
  default = "t2.micro"
}

variable "instance_keypair" {
  description = "EC2 instance keypair"
  type = string
  default = "terraform-key"
}
