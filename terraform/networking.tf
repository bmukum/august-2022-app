provider "aws" {
}

resource "aws_vpc" "my_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "sub1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "Main"
  }
}

# output "vpc_id" {
#   value = aws_vpc.my_vpc.id
# }

# output "subnet_id" {
#   value = aws_subnet.sub1.id
# }