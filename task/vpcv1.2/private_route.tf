# create NATGW
# select a public subnet that natgateway connected
# connectivity type : private
# elastic IP allocation : choose allocate elastic ip it will create an id ant put it
# create it

# create route table "tasktest_private_route_table"
# choose vpc and create it
# edit subnet assosiation choose private named subnet and assosiate them
# edit route and add route
# choose destination :0.0.0.0/0 choose NatGW that created and save changes

resource "aws_eip" "task-eip" {
}

resource "aws_nat_gateway" "task_natgw" {
  allocation_id = aws_eip.task-eip.id
  connectivity_type = "public"
  subnet_id         = element(aws_subnet.public_subnets,0)
  depends_on = [aws_internet_gateway.task_igw]
    tags = {
    Name = "task_natgw"
  }
}


resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.my_task_vpc.id

  route {
    cidr_block = var.cidr_blocks
    nat_gateway_id = aws_nat_gateway.task_natgw.id
  }
}

resource "aws_route_table_association" "private_subnets" {
  count = length(var.private_cidr_blocks)
  subnet_id      = aws_subnet.private_subnets[count.index].id
  route_table_id = aws_route_table.private_route_table.id 
}
