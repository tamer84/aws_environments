# Default AWS Provider - for the workload account itself
provider "aws" {
  region = var.region
  assume_role {
    # The role ARN within workload accounts for CICD
    role_arn = "arn:aws:iam::${var.account_id}:role/service-role/cicd_role"
  }
  default_tags {
    tags = {
      Terraform    = "true"
      Environment  = terraform.workspace
    }
  }
}

# US-East-1 region on Workload account - for cloudfront support in case we use it later
# Certificate is for free basically
provider "aws" {
  region = "us-east-1"
  alias  = "central_cert"
  assume_role {
    # The role ARN within workload accounts for CICD
    role_arn = "arn:aws:iam::${var.account_id}:role/service-role/cicd_role"
  }
  default_tags {
    tags = {
      Terraform   = "true"
      Environment = terraform.workspace
    }
  }
}
