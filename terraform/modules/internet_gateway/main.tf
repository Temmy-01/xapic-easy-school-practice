resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.gateway_name
  }
}

output "gateway_id" {
  value = aws_internet_gateway.gw.id
}
