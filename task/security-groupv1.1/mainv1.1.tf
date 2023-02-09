   
resource "aws_security_group" "main_sg" {
  name        = var.sg_name
  description = "This security group allows inbound traffic for ports: 80,443,22,3306"
  vpc_id = var.vpc_id

  ingress   {
    description      = "Allow http from VPC"
    from_port        = format(" %d", var.port1)
    to_port          = format(" %d", var.port1)
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  } 

  egress   {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}