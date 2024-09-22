variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "gateway_id" {
  description = "The ID of the Internet Gateway"
  type        = string
}

variable "route_table_name" {
  description = "The name of the route table"
  type        = string
}
