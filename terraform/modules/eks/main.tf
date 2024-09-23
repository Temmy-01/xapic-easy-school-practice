resource "aws_eks_cluster" "my_cluster" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn  # Add this line

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}
