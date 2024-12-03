data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {

  count = var.create_ec2 ? 1 : 0 # this is what makes the deployment optional, based on the flag in the tfvars file

  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  subnet_id = module.vpc_example_simple.public_subnets[0]

  tags = {
    Name = "HelloWorld"
  }
}

