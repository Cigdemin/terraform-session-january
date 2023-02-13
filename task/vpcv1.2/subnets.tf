# Create subnets
# Choose VPC ID you will create subnets in
# 3 public subnet seetings: give subnet name "public_subnet_a,b,c"
# Availability zone : "us-west-2a"
# IPv4 CIDR block : 10.0.1.0/24 , 10.0.2.0/24 , 10.0.3.0/24
# other 3 priveate subnet seetings: give subnet name "private_subnet_a,b,c"
# IPv4 CIDR block : 10.0.11.0/24 , 10.0.12.0/24 , 10.0.13.0/24


resource "aws_subnet" "subnets" {
  count = length(var.subnet_cidr_blocks)
  vpc_id     = aws_vpc.my_task_vpc.id
  cidr_block = element(var.subnet_cidr_blocks, count.index )
  availability_zone = element(var.availability_zone, 2 )
  tags = {
    name = "subnet_${element(var.subnet_names, count.index )}"
  }
}
