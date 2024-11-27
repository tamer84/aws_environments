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

provider "aws" {
  region = var.region
  alias  = "dns"
  assume_role {
    role_arn = null
  }
  assume_role {
    # The role ARN for CICD
    role_arn = "arn:aws:iam::${var.management_account_id}:role/service-role/cicd_role"
  }
  default_tags {
    tags = {
      Terraform = "true"
    }
  }
}
