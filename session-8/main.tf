resource "aws_instance" "main" {
    ami = data.aws_ami.amazon_linux_2.image_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [ aws_security_group.main_sg.id ]
    key_name = aws_key_pair.terraform_server.key_name

    provisioner "file" {
      source = "~/terraform-session-january/session-8/index.html"   #the path on Terraform Server
      destination = "/tmp/index.html"   #the path for the Remote Server

      connection {
        type = "ssh"
        user =  "ec2-user"#user on Remote system
        host = self.public_ip  #self mean same block ip address
        private_key = file("~/.ssh/id_rsa")
      }
    }

    provisioner "remote-exec" {
      inline = [
        "sudo yum install httpd -y",
        "sudo systemctl enable httpd",
        "sudo systemctl start httpd",
        "sudo cp /tmp/index.html /var/www/html/index.html"
      ]
    }
}

resource "aws_key_pair" "terraform_server" {
    key_name = "Terraform-Server-Key"
    public_key = file("~/.ssh/id_rsa.pub")
}

output "instance_ip" {
    value = aws_instance.main.public_ip
  
}