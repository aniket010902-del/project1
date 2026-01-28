

variable "aws_region" {

  description = "AWS region to deploy resources"

  type        = string

  default     = "eu-west-1"

}



variable "project_name" {

  description = "Prefix for naming AWS resources"

  type        = string

  default     = "tf-webserver"

}



variable "instance_type" {

  description = "EC2 instance type"

  type        = string

  default     = "t2.micro"

}



variable "key_name" {

  description = "Existing EC2 Key Pair name for SSH"

  type        = string

}



variable "my_ip_cidr" {

  description = "Your public IP in CIDR for SSH access, e.g., 1.2.3.4/32"

  type        = string

}


