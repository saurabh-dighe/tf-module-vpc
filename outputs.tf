output "VPC_ID" {
  value = data.aws_vpc.roboshop_dev.id
}

output "DEFAULT_VPC_ID" {
  value = var.DEFAULT_VPC_ID
}

output "VPC_CIDR" {
  value = data.aws_vpc.roboshop_dev.cidr_block
}

output "DEFAULT_VPC_CIDR" {
  value = var.DEFAULT_VPC_CIDR
}

output "PRIVATE_SUBNET_ID" {
  value = data.aws_subnet.private_subnet.*.id
}

output "PUBLIC_SUBNET_ID" {
  value = data.aws_subnet.public_subnet.*.id
}

output "PRIVATE_SUBNET_CIDR" {
  value = data.aws_subnet.private_subnet.cidr_block
}

output "PUBLIC_SUBNET_CIDR" {
  value = data.aws_subnet.public_subnet.cidr_block
}
