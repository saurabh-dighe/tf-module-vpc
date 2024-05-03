resource "aws_vpc" "roboshop-dev" {
  cidr_block       = var.VPC_CIDR
  instance_tenancy = "default"

  tags = {
    Name = "roboshop-${var.ENV}-dev"
  }
