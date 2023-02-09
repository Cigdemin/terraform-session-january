#input variable

variable "sg_name" {
  type = string
  description = "This is asecurity group opens 10 ports"
  default = "main"
}

variable "vpc_id" {
  type = string
  description = "to give vpc id"
  default = "vpc-08d1b3e58f4fb4b4b"
}


variable "port1" {
  type = list
  description = "giving port numbers"
  default = [ 22, 80, 443, 3306]
}



variable "protocol" {
  type = string
  description = "specify protocol type"
  default ="tcp"
}