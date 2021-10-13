variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
  default     =  "10-21-Flugel"

}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-2"
}

# ubuntu-trusty-20.04 (x64)
variable "aws_amis" {
  default = {
    "us-east-2" = "ami-00399ec92321828f5"
    "us-west-2" = "ami-03d5c68bab01f3496"
  }
}
variable "instance_count" {
  default = "2"
}


variable "instance_text" {
  default = "[{'Key': 'Owner', 'Value': 'InfraTeam'}, {'Key': 'Name', 'Value': 'Flugel'}]"
}