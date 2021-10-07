terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 0.14"

  backend "remote" {
    organization = "suco-test"

    workspaces {
      name = "ghub-action"
    }
  }
}





provider "aws" {
  region = var.aws_region
}
# Create EC2 instance bucket
resource "aws_instance" "Instance-01" {
  ami = var.ami
  key_name = var.key_name
  instance_type = var.instance_type
  tags= {
    Name = var.name
    Owner = var.owner
  }
}

# Create S3 bucket
resource "aws_s3_bucket" "Flugel"{
 bucket = var.bucket_name
 acl    = "private"
  tags= {
    Name = var.name
    Owner = var.owner
  }
}
//Suc0_Cloud-09
