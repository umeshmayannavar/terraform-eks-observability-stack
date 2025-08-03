module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.2.1"

  cluster_name    = var.cluster_name
  cluster_version = "1.28"

  subnet_ids         = module.vpc.private_subnets
  vpc_id             = module.vpc.vpc_id
  enable_irsa        = true

  eks_managed_node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_types = ["t3.medium"]
    }
  }

  tags = {
    Environment = "dev"
  }
}
