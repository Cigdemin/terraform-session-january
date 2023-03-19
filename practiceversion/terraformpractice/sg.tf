variable "sg_inbound_ports" {
  type = list(number)
  description = "list of ingress ports/updated"
  default = [ 22, 80, 443, 8200, 8201, 8300, 9200, 9500 
}




resource "aws_security_group" "dynamic_sg" {   
  name        = "dynamic_sg"
  description = "Allow inbound traffic with dynamic block"

  dynamic "ingress" {
    for_each = var.sg_inbound_ports
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
    }

  }

}