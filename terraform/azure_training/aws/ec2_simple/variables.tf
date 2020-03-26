variable "az" {
 type = string
 description = "Availability Zone"
 default     = "us-east-1a"
}

variable "ec2-type" {
 type = string
 description = "EC2 Instance Type"
 default     = "t2.micro"
}

variable "ami" {
 type = string
 description = "EC2 AMI ID"
 default     = "ami-0fc61db8544a617ed"
}