# # Call the VPC module
# module "vpc" {
#   source    = "./modules/vpc"
#   vpc_cidr  = var.vpc_cidr
#   vpc_name  = "easy-school-vpc"
# }

# # Call the Subnet module
# module "subnet" {
#   source      = "./modules/subnet"
#   vpc_id      = module.vpc.vpc_id
#   subnet_cidr = var.subnet_cidr
#   subnet_name = "easy-school-subnet"
# }

# # Call the Internet Gateway module
# module "internet_gateway" {
#   source      = "./modules/internet_gateway"
#   vpc_id      = module.vpc.vpc_id
#   gateway_name = "easy-school-gateway"
# }

# # Call the Route Table module
# module "route_table" {
#   source         = "./modules/route_table"
#   vpc_id         = module.vpc.vpc_id
#   gateway_id     = module.internet_gateway.gateway_id
#   route_table_name = "easy-school-route-table"
# }

# # Call the Route Table Association module
# module "route_table_association" {
#   source          = "./modules/route_table_association"
#   subnet_id       = module.subnet.subnet_id
#   route_table_id  = module.route_table.route_table_id
# }

# # Call the Security Group module
# module "security_group" {
#   source      = "./modules/security_group"
#   vpc_id      = module.vpc.vpc_id
#   security_group_name = "easy-school-sg"
# }

# # Call the Key Pair module
# module "key_pair" {
#   source      = "./modules/key_pair"
#   key_name    = var.key_name
#   public_key_path = var.public_key_path
# }

# # Call the EC2 instance module
# module "ec2_instance" {
#   source         = "./modules/ec2_instance"
#   ami_id         = data.aws_ami.ubuntu.id
#   instance_type  = var.instance_type
#   key_name       = var.key_name
#   subnet_id      = module.subnet.subnet_id
#   security_group_id = module.security_group.security_group_id
#   instance_name  = "easy-school-ec2"
# }

# Provider blocks
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.62.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# Call the VPC module
module "vpc" {
  source    = "./modules/vpc"
  vpc_cidr  = var.vpc_cidr
  vpc_name  = "easy-school-vpc"
}

# Call the Subnet module
# Call the Subnet module
module "subnet" {
  source      = "./modules/subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_name = "easy-school-subnet"
}

# Call the Internet Gateway module
module "internet_gateway" {
  source     = "./modules/internet_gateway"
  vpc_id     = module.vpc.vpc_id
  gateway_name = "easy-school-gateway"
}

# Call the Route Table module
module "route_table" {
  source          = "./modules/route_table"
  vpc_id          = module.vpc.vpc_id
  gateway_id      = module.internet_gateway.gateway_id
  route_table_name = "easy-school-route-table"
}

# Call the Route Table Association module
module "route_table_association" {
  source          = "./modules/route_table_association"
  subnet_id       = module.subnet.subnet_id
  route_table_id  = module.route_table.route_table_id
}

# Call the Security Group module
# Call the Security Group module
module "security_group" {
  source             = "./modules/security_group"
  vpc_id             = module.vpc.vpc_id
  security_group_name = "easy-school-sg"
  vpc_cidr              = var.vpc_cidr  
}

# Call the Key Pair module
module "key_pair" {
  source         = "./modules/key_pair"
  key_name       = var.key_name
  public_key_path = var.public_key_path
}

# Call the EC2 Instance module
module "ec2_instance" {
  source             = "./modules/ec2_instance"
  ami_id             = data.aws_ami.ubuntu.id
  instance_type      = var.instance_type
  key_name           = var.key_name
  subnet_id          = module.subnet.subnet_id
  security_group_id  = module.security_group.security_group_id
  instance_name      = "easy-school-ec2"
}

# Data source for the AMI
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

