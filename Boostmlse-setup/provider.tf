terraform {
    required_version = "~> 1.1.2"
  required_providers {
      aws ={
          source="hashicorp/aws"
      }
  }
}
provider "aws" {
    profile = "neeteshyadav"
    region = var.aws_region
    access_key = var.access_key
    secret_key = var.secret_key
  
}