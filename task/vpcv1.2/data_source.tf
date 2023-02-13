#fetch public and private subnets
data "aws_subnet" "subnet_public" {
count = length(var.subnet_names)
  filter {
    name = "tag:name"
    values = ["subnet_public_*"]
  }
}