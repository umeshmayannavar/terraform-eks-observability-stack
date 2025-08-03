variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}

variable "cluster_name" {
  default = "devops-eks-cluster"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
