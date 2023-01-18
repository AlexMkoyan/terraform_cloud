# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#   }
# }

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myubuntu" {
  ami = "ami-0b5eea76982371e91"
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}