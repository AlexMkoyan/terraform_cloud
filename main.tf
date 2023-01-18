terraform {
  backend "s3" {
    bucket = "lennagan"
    key    = "terraform/emportant"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# resource "aws_s3_bucket" "example" {
#   bucket = "lennagan"
#   acl    = "private"
# }

resource "aws_instance" "myubuntu" {
  ami = "ami-0b5eea76982371e91"
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}