#fetch public and private subnets
data "aws_subnet" "public" {
  filter {
    name = "tag:name"
    values = [ "subnet_public*" ]
  }
}