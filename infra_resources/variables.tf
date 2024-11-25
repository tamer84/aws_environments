variable "region" {
  type        = string
  description = "Region where the certificate should be imported into"
}

variable "account_id" {
  type        = string
  description = "Account Id of workload"
}

variable "solution" {
  type        = string
  description = "Name of the solution the infrastructure is being provisioned for"
}
