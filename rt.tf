resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.roboshop_dev.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  route {
    cidr_block                = var.DEFAULT_VPC_CIDR
    vpc_peering_connection_id = aws_vpc_peering_connection.peering_connection.id
  }

  tags = {
    Name = "roboshop-${var.ENV}-public_rt"
  }
}

#aws_public_subnet_route_table_association
resource "aws_route_table_association" "public_rt_association" {
  count             = length(aws_subnet.public_subnet.*.id)
  subnet_id         = element(aws_subnet.public_subnet.*.id, count.index)
  route_table_id    = aws_route_table.public_rt.id
}
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.roboshop_dev.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw.id
  }
  route {
    cidr_block                = var.DEFAULT_VPC_CIDR
    vpc_peering_connection_id = aws_vpc_peering_connection.peering_connection.id
  }

  tags = {
    Name = "roboshop-${var.ENV}-private_rt"
  }
}

resource "aws_route_table_association" "private_rt_association" {
  count             = length(aws_subnet.private_subnet.*.id)
  subnet_id         = element(aws_subnet.private_subnet.*.id, count.index)
  route_table_id    = aws_route_table.private_rt.id
}

resource "aws_default_route_table" "DEFAULT_VPC_RT" {
  default_route_table_id = var.DEFAULT_VPC_RT

  route {
    cidr_block = var.DEFAULT_VPC_CIDR
    vpc_peering_connection_id = aws_vpc_peering_connection.peering_connection.id
  }
  tags = {
    Name = "Default_RT_TF"
  }
}