module "vpc_example_simple" {
  source  = "github.com/terraform-aws-modules/terraform-aws-vpc?ref=v5.16.0"

  azs = ["${var.region}a", "${var.region}b"]
  
}
