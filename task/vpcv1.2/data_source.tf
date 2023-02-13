#fetch public and private subnets
data "aws_subnet" "public" {
count = length(var.subnet_names)
  filter {
    name = "tag:name"
    values = ["*public*"]
  }
}