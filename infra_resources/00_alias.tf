resource "aws_iam_account_alias" "alias" {
  account_alias = "${var.solution}-${terraform.workspace}-${var.account_id}"
}
