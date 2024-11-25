provider "aws" {
  region = var.region
  assume_role {
    # The role ARN for CICD
    role_arn = "arn:aws:iam::${data.external.get_account_id.result.Id}:role/service-role/cicd_role"
  }
  default_tags {
    tags = {
      Terraform   = "true"
      Environment = terraform.workspace
    }
  }
}