terraform {
  required_version = "~> 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 5.0.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.17.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.4.1"
    }
  }

  backend "s3" {
    encrypt        = true
    bucket         = format("terraform-eks-state-%s", local.account_id)
    key            = "networking.tfstate"
    dynamodb_table = "terraform-eks-state-lock-networking"
    region         = var.region
  }
}

provider "aws" {
  region                   = var.region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = var.profile
}
