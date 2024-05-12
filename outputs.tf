output "VPC_ID" {
  value = aws_vpc.roboshop_dev.id
}

output "DEFAULT_VPC_ID" {
  value = var.DEFAULT_VPC_ID
}

output "VPC_CIDR" {
  value = aws_vpc.roboshop_dev.cidr_block
}

output "DEFAULT_VPC_CIDR" {
  value = var.DEFAULT_VPC_CIDR
}

output "PRIVATE_SUBNET_ID" {
  value = aws_subnet.private_subnet.*.id
}

output "PUBLIC_SUBNET_ID" {
  value = aws_subnet.public_subnet.*.id
}

output "PRIVATE_SUBNET_CIDR" {
  value = aws_subnet.private_subnet.*.cidr_block
}

output "PUBLIC_SUBNET_CIDR" {
  value = aws_subnet.public_subnet.*.cidr_block
}

output "PRIVATE_HOSTEDZONE_ID" {
  value = aws_route53_zone.private_hosted_zone.zone_id
}

output "PRIVATE_HOSTEDZONE_NAME" {
  value = aws_route53_zone.private_hosted_zone.name
}
