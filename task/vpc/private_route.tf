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

resource "aws_nat_gateway" "task_natgw" {
  connectivity_type = "private"
  subnet_id         = aws_subnet.public_subnet_a.id
}

resource "aws_route_table" "tasktest_private_route_table" {
  vpc_id = aws_vpc.my_task_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.task_natgw.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.private_subnet_a.id
  route_table_id = aws_route_table.tasktest_private_route_table.id
}

resource "aws_route_table_association" "ba" {
  subnet_id      = aws_subnet.private_subnet_b.id
  route_table_id = aws_route_table.tasktest_private_route_table.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.private_subnet_c.id
  route_table_id = aws_route_table.tasktest_private_route_table.id
}
