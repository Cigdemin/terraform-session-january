resource "aws_security_group" "CreateSG" {  
  name        = "main"
  description = "Allow SSH inbound traffic"
}
  ingress {
    from_port        = 22
    to_port          = 22  #if I put 100 here it gonna open 79 ports 22,23,24,25...100 ports
    protocol         = "tcp"  #string
    cidr_blocks      = ["0.0.0.0/0"]  #it is a list so expect [] 

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
}

# recommendation:
# 1.Lower case
# 2.use _ instead of -
# 3. Proper name for the second_label
