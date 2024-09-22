# variable "key_name" {
#   type = string
# }

# variable "public_key_path" {
#   description = "Path to the public key for SSH access"
#   type        = string
#   default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCtNK/xxEqAvcNhn/KI/8Lo3qS4dtI9Asq6CtbpSRgJ5J2Dq9V9Z++yWgYSxuEdcuXs6c9W8ihEqpOzuEf4iJV1c/CMKuN78oSBVEegURd0Ezn+HfVmueiA+wYM51d1t7md/3O/UbxrLjC25kyGrjiCpvJqB8KmwbAp9pj014Bbfguc8htTDwE5mFGQUvLzzuWpin+Ebccv3JlkxK10mNH8DqmXRNqYujgYyRBR2Z9n1V5OdgyAXM6L1eXP7lAFE0cxjlzk7wZq97P0wK68vQAjOK0IWVKDrn6pazTSdeXSyxtR1VxC5afCP/zqD9TULiLIGidIM7jEs0nVSYgErthgxye/C6NzyB0zNgfk7/mX2xTOts8Las/gK6F6paqZfgcJxlavicmVjU7TNNixYNAzxgTsIWRZ+qN1cF+f+ssEdRZOyV4KKnnhytRlWBEKiAH1YVljZpANsc/TxZpGcrl/2W9Cq34Kk/z6XWIs5ORlasRTNRAO0gdpACkLTGBEO00VIws0eSgJ5nIHo/OH8vsy+3zOFDF0Iz668HR+JOs7PeGJGHqScB0C+38wrEU8rA0PScBvKWhH7z9N35LmgESYAQ1kJ5evas/8X7VeSwnvkC2kQZDkhXx2PLZelkITuqcx++MwSvxdCR9mN0r5URf5p7hsp+btzg3mxX7T0QgymQ== t_famakinwa@yahoo.com"
# }


# variables.tf
variable "key_name" {
  description = "The name of the key pair"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key for SSH access"
  type        = string
  default     = "/Users/mac/.ssh/temmy-01.pub" # Update if needed
}
