# Creating VPC on GUI
# you firstly choose VPC only or VPC and more (you can create with subnet)
# give a name tag (my_task_vpc)
# choose IPv4 CIDR manual input
# give IPv4 CIDR
# IPv6 CIDR block infor it is default choosen "No IPv6 CIDR block on GUI"
# Tenancy : default
# Then Create vpc

resource "aws_vpc" "my_task_vpc" {
  Name = replace(local.name , "resource","vpc")
  cidr_block       = var.vpc_cidr_block
  tags = local.common_tags
}
