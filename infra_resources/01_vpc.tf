module "vpc_example_simple" {
  source  = "github.com/terraform-aws-modules/terraform-aws-vpc?ref=v5.16.0"

  azs = ["${var.region}a", "${var.region}b"]

  cidr = "10.0.0.0/16"

  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  
}
