variable "key_name" {
  type = string
}

# variable "public_key_path" {
#   type = string
# }
variable "public_key_path" {
  description = "Path to the public key for SSH access"
  type        = string
  default     = "~/.ssh/temmy-01.pub"
}

