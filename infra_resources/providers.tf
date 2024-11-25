# Default AWS Provider - for the workload account itself
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Terraform    = "true"
      Environment  = terraform.workspace
    }
  }
}
