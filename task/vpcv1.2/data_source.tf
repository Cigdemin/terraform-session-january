#fetch public and private subnets
data "aws_subnet" "public" {
count = lenth(var.subnet_names)
  filter {
    name = "*public*"
    values = element(var.subnet_names,count.index)
  }
}