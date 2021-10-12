terraform {
    required_version = "~> 1.0.8"
  required_providers {
      aws ={
          source="hashicorp/aws"
      }
  }
}
provider "aws" {
    profile = "default"
    region = "ap-south-1"
  
}