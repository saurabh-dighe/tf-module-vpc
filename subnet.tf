resource "aws_subnet" "roboshop-public-subnet-1" {
  count      = 2
  vpc_id     = aws_vpc.roboshop-dev.id
  cidr_block = [var.PUBLIC_SUBNET_CIDR]

  tags = {
    Name = "roboshop-public-subnet-1"
  }
}