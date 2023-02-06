# OpenEC2 console and chose Security group from left side
# Create new security group
# give a security gorup name
# give a description " This security group allows inbound traffic for ports: 80,443,22,3306 "
# chose a VPC "our default VPC ID: vpc-08d1b3e58f4fb4b4b "
# add inbound rules
   # Type: give protocol, protocol range , source and CIDR block
   # outbound rules is default open to all trafic

   
resource "aws_security_group" "main_sg" {
  name        = "main_sg"
  description = "This security group allows inbound traffic for ports: 80,443,22,3306"
  vpc_id = "vpc-08d1b3e58f4fb4b4b"

  ingress   {
    description      = "Allow http from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  } 

  ingress   {
    description      = "Allow https from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress   {
    description      = "Allow ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress   {
    description      = "Allow sql from VPC"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress   {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}