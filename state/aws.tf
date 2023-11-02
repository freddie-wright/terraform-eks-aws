terraform {
 required_version = "> 1.4.6"
 required_providers {
    aws = {
      version = "value"
      source = "hashicorp/aws"
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
}

provider "aws" {
  region                   = var.region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = var.profile
}
