output "cluster_id" {
  value       = aws_eks_cluster.my_cluster.name
  description = "The name of the EKS cluster"
}
