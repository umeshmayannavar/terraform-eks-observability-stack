provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "your-tf-state-bucket"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}
