#fetch public and private subnets
data "aws_subnet" "public" {
  filter {
    count = 3
    name = "tag:name"
    values = element([ "subnet_public*" ],count.index)
  }
}