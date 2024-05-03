resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.roboshop.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "roboshop-${var.ENV}-public_rt"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.roboshop.id

#   route {
#     cidr_block = var.VPC_CIDR
#     gateway_id = aws_internet_gateway.ngw.id
#   }

  tags = {
    Name = "roboshop-${var.ENV}-private_rt"
  }
}