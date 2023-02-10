# Create subnets
# Choose VPC ID you will create subnets in
# 3 public subnet seetings: give subnet name "public_subnet_a,b,c"
# Availability zone : "us-west-2a"
# IPv4 CIDR block : 10.0.1.0/24 , 10.0.2.0/24 , 10.0.3.0/24
# other 3 priveate subnet seetings: give subnet name "private_subnet_a,b,c"
# IPv4 CIDR block : 10.0.11.0/24 , 10.0.12.0/24 , 10.0.13.0/24

data "aws_vpc" "selected_vpc" {
  id = var.vpc_id
}

resource "aws_subnet" "public_subnet_$${var.az_name}" {
  vpc_id     = data.aws_vpc.selected_vpc
  cidr_block = var.az_name.cidrblock
  availability_zone = var.az_name.availabilityzone

}
# Why I put $$ to my code? Because I got the error below 
#Error: Invalid string literal
#
# On subnets.tf line 13: Template sequences are not allowed in this string. To
# include a literal "$", double it (as "$$") to escape it.


#resource "aws_subnet" "public_subnet_c" {
#  vpc_id     = aws_vpc.my_task_vpc.id
#  cidr_block = "10.0.3.0/24"
#  availability_zone = "us-west-2c"
#
#}