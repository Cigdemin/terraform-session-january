#fetch public and private subnets
data "aws_subnet" "public" {
  filter {
    count = lenth(var.subnet_names)
    name = "*public*"
    values = element(var.subnet_names,count.index)
  }
}