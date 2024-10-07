terraform {
  backend "s3" {
    bucket         = "bucket-eks-cluster-100"
    region         = "eu-west-2"
    key            = "aws-github-actions/terraform.tfstate"
    encrypt = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}