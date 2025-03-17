variable "vpc_id" {
  description = "The ID of the VPC to use"
  type        = string
  default     = "vpc-044604d0bfb707142"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t3.medium"
}

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "owner" {
  description = "The name of the owner of the resources"
  type        = string
  default     = "Tzach"
}

variable "aws_access_key" {
  description = "AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}