variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "us-east-1"
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for security group"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name for EC2 access"
  type        = string
}