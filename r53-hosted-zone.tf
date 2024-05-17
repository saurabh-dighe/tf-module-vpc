
#Provisioning Private hosted zone
resource "aws_route53_zone" "private_hosted_zone" {
  name = "roboshop.internal"

  vpc {
    vpc_id = aws_vpc.roboshop_dev.id
  }
  vpc {
    vpc_id = data.aws_vpc.default_vpc.id
  }
}
#Provisioning Public hosted zone
# resource "aws_route53_zone" "public_hosted_zone" {
#   name = "roboshop.online"
# }  