variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "cluster_role_arn" {
  description = "The IAM role ARN for the EKS cluster"
  type        = string
}


