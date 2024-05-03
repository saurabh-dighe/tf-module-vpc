resource "aws_subnet" "roboshop-public-subnet-1" {
  count      = length(var.PRIVATE_SUBNET_CIDR)
  vpc_id     = aws_vpc.roboshop-dev.id
  cidr_block = [var.PUBLIC_SUBNET_CIDR]

  tags = {
    Name = "roboshop-public-subnet-1"
  }
}