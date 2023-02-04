resource "aws_instance" "first_ec2" {
  ami           = "ami-06e85d4c3149db26a"
  instance_type = "t2.micro"
}