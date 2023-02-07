# Create subnets
# Choose VPC ID you will create subnets in
# 3 public subnet seetings: give subnet name "public_subnet_a,b,c"
# Availability zone : "us-west-2a"
# IPv4 CIDR block : 10.0.1.0/24 , 10.0.2.0/24 , 10.0.3.0/24
# other 3 priveate subnet seetings: give subnet name "private_subnet_a,b,c"
# IPv4 CIDR block : 10.0.11.0/24 , 10.0.12.0/24 , 10.0.13.0/24

resource "aws_subnet" "public_subnet_a" {
  vpc_id     = aws_vpc.my_task_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-2a"

}

resource "aws_subnet" "public_subnet_b" {
  vpc_id     = aws_vpc.my_task_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-2b"

}

resource "aws_subnet" "public_subnet_c" {
  vpc_id     = aws_vpc.my_task_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-2c"

}

resource "aws_subnet" "private_subnet_a" {
  vpc_id     = aws_vpc.my_task_vpc.id
  cidr_block = "10.0.11.0/24"
  availability_zone = "us-west-2a"

}

resource "aws_subnet" "private_subnet_b" {
  vpc_id     = aws_vpc.my_task_vpc.id
  cidr_block = "10.0.12.0/24"
  availability_zone = "us-west-2b"

}

resource "aws_subnet" "private_subnet_c" {
  vpc_id     = aws_vpc.my_task_vpc.id
  cidr_block = "10.0.13.0/24"
  availability_zone = "us-west-2c"

}