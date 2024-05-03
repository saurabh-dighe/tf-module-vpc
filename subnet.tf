#Provisioning public subnet
resource "aws_subnet" "public_subnet" {
  count      = length(var.PUBLIC_SUBNET_CIDR)
  vpc_id     = aws_vpc.roboshop-dev.id
  cidr_block = element(var.PUBLIC_SUBNET_CIDR, count.index)
  availability_zone = element(var.ZONE, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet-${var.ENV}-${count.index+1}"
  }
}

#Provisioning private subnet
resource "aws_subnet" "private_subnet" {
  count      = length(var.PRIVATE_SUBNET_CIDR)
  vpc_id     = aws_vpc.roboshop-dev.id
  cidr_block = element(var.PRIVATE_SUBNET_CIDR, count.index)
  availability_zone = element(var.ZONE, count.index)

  tags = {
    Name = "private_subnet-${var.ENV}-${count.index+1}"
  }
}