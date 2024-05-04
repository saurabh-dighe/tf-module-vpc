#Provioning VPC peering

resource "aws_vpc_peering_connection" "peering_connection" {
  peer_vpc_id   = var.DEFAULT_VPC_ID
  vpc_id        = aws_vpc.roboshop_dev.id
  auto_accept   = true

  tags = {
    Name = "roboshop-${var.ENV}-peering_connection"
  }
}

# data "aws_vpc" "DEFAULT_VPC" {
#    filter {
#     name   = "tag:Name"
#     values = ["aws_vpc"]
#   }
# }