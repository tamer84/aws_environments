terraform {
  backend "s3" {
    key      = "infra_resources/tfstate.tf"
  }
}
