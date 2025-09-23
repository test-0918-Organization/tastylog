# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "tastylog-kudo-s3-bucket"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  region  = "us-east-1"
}
