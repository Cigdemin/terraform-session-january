resource "aws_security_group" "main_sg" {   
  name        = "main_sg"
  description = "Allow SSH inbound traffic"
}

resource "aws_security_group_rule" "ingress" {
  type              = "ingress"
  to_port           = element(var.ports , 0) #22
  from_port         = element(var.ports , 0) #22
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