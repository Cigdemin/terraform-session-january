resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.main_sg.id ] # alist of strings #dynamic referances
  tags = {
    Name = "${var.env}-instances" #dev-instance
    Name1 = format("%s-instance",var.env) #dev-instance
  }
}
