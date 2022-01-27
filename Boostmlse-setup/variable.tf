variable "aws_region" {
  description = "AWS Region which you want to create Resource"
  type = string
  default = "ap-south-1"
}
variable "access_key" {
  description = "AWS Access key use to create all services"
  type = string
  default = "AKIARGMEKY3ZHIEMJQMW"
}

variable "secret_key" {
  description = "AWS Secret keys use to Create all services"
  type = string
  default = "36npi6BNmfY+a5PCPzd25dzGLXY0QmsB0K1G4xR8"
}

variable "ami" {
  description = "Ec2 instance image"
  type = string
  default = "ami-0789681fae8b18e56"
}

variable "instance_type" {
  description = "Ec2 instance Type"
  type = string
  default = "t2.large"
}

variable "instance_keypair" {
  description = "EC2 instance keypair"
  type = string
  default = "MyKeyPair"
}
