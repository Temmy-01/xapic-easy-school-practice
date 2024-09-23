output "subnet_ids" {
  value = [aws_subnet.main.id]  # Wrap in a list to match the expected type
}
