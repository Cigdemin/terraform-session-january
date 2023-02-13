#fetch public and private subnets
data "aws_subnet" "subnet_public" {
  filter {
    name = "tag:name"
    values = ["subnet_public_*"]
  }
}