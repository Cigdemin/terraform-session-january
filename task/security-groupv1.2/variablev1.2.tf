#input variable

variable "sg_name" {
  type = string
  description = "This is asecurity group opens 10 ports"
  default = "tasksg"
}
variable "cidr_block_all {
  type = string
  description = "defines CIDR block for all traffic"
  default = "0.0.0.0/0"
}
variable "protocol" {
  type = string
  description = "specify protocol type"
  default = "tcp"
}
variable "ports" {
  type = list(string)
  description = "list of ports"
  default = ["22","80","3306","443","23","110","995","143","993","21"]
}
variable "vpc_id" {
  type = string
  description = "identifiying default vpc id"
  default = "vpc-08d1b3e58f4fb4b4b"
}