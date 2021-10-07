variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-2"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "10-21-Flugel"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "ami" {
  default     = "ami-00399ec92321828f5"
  description = "EC2 Image ID"
}

variable "name" {
  default     = "Flugel"
  description = "Tag Name"
}

variable "owner" {
  default     = "InfraTeam"
  description = "Tag Owner"
}


variable "bucket_name" {
  default     = "s3b-flugel"
  description = "S3 bucket name"
}