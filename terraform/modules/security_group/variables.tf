variable "vpc_id" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "security_group_name" {
  type    = string
  default = "allow_tls"
}

