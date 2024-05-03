#Provioning VPC peering

resource "aws_vpc_peering_connection" "peering_connection" {
  peer_owner_id = "996658305414"
  peer_vpc_id   = aws_vpc.DEFAULT_VPC.id
  vpc_id        = aws_vpc.roboshop_dev.id
  auto_accept   = true

  tags = {
    Name = "roboshop-${var.ENV}-peering_connection"
  }
}

resource "aws_vpc" "foo" {
  cidr_block = var.VPC_CIDR
}

resource "aws_vpc" "bar" {
  cidr_block = var.DEFAULT_VPC_CIDR
}

data "aws_vpc" "DEFAULT_VPC" {
   filter {
    name   = "tag:Name"
    values = ["aws_vpc"]
  }
}