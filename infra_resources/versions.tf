terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.74.0"
    }
  }
  required_version = ">= 1.5.0, < 2.0.0"
}