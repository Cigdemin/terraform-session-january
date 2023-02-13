#create IGW to access subnet to internet
# give name - "task_igw"
# attacheg IGW to VPC
# choose vpc id and attach it

# choose already created route table when you create subnet and assosiate it with public subnets
# edit subnet assosiation
# choose 3 public named subnet and save assosiation
# edit routes and add route
# choose destination :0.0.0.0/0 choose IGW that created and save changes

resource "aws_internet_gateway" "task_igw" {
  vpc_id = aws_vpc.my_task_vpc.id
  tags = {
    Name = "task_igw"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_task_vpc.id
  route {
    cidr_block = var.cidr_blocks
    gateway_id = aws_internet_gateway.task_igw.id
  }
}

resource "aws_route_table_association" "public_subnets" {
  count = length(var.public_cidr_blocks)
  subnet_id      = aws_subnet.public_subnets.id
  route_table_id = aws_route_table.public_route_table.id 
}
