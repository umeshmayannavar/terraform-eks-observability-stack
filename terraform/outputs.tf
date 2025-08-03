output "cluster_name" {
  value = module.eks.cluster_name
}

output "kubeconfig" {
  value = module.eks.kubeconfig_filename
}

output "node_group_role_arn" {
  value = module.eks.node_group_iam_role_arns
}
