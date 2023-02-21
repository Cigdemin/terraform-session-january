resource "aws_instance" "main" {
    ami = data.aws_ami.amazon_linux_2.image_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [ aws_security_group.main_sg.id ]
    key_name = aws_key_pair.terraform_server.key_name
}

resource "aws_key_pair" "terraform_server" {
    key_name = "Terraform-Server-Key"
    public_key = file("~/.ssh/id_rsa.pub")
}