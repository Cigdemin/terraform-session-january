resource "aws_security_group" "main_sg" {   
  name        = "main_sg"
  description = "Allow SSH inbound traffic"
}

resource "aws_security_group_rule" "ingress" {
  count = length[var.ports]
  type              = "ingress"
  to_port           = element(var.ports , count.index) #22
  from_port         = element(var.ports , count.index) #22
  cidr_blocks = [ "0.0.0.0/0" ]
  security_group_id = aws_security_group.main_sg.id
  protocol          = "tcp"
}
resource "aws_security_group_rule" "egress" {
  type              = "egress"
  to_port           = 0
  protocol          = "-1"
  from_port         = 0
  security_group_id = aws_security_group.main_sg.id
  cidr_blocks = [ "0.0.0.0/0" ]
}

# count.index = count the indexes

#count=2
#count.index = 0,1
#count=5
#count.index=0,1,2,3,4