   
resource "aws_security_group" "main_sg" {
  name        = var.sg_name
  description = "This security group allows inbound traffic for ports: 80,443,22,3306"
  vpc_id = var.vpc_id

  ingress   {
    description      = "Allow ${var.port1} from VPC"
    from_port        = var.port1
    to_port          = var.port1
    protocol         = var.protocol
    cidr_blocks      = [var.cidr_blocks]
  } 

  
  egress   {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.cidr_blocks]
  }
}