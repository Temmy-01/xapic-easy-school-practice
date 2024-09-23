# variables.tf

# AWS Region
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-2"
}

# VPC CIDR Block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Subnet CIDR Block
variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# Instance type
variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  default     = "t3.micro"
}

# Key pair name
variable "key_name" {
  description = "The name of the key pair"
  type        = string
  default     = "deployer-key"
}

# SSH Public key path
variable "public_key_path" {
  description = "Path to the public key for SSH access"
  type        = string
  default     = "~/.ssh/temmy-01.pub"
}

variable "cluster_role_arn" {
  description = "The IAM role ARN for the EKS cluster"
  type        = string
}




