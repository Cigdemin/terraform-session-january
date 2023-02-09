variable "vpc_id" {
  type = string
  description = "to give vpc id"
  default = "vpc-08d1b3e58f4fb4b4b"
}

variable "cidr_blocks" {
  type = string
  description = "defines CIDR block"
  default = "0.0.0.0/0"
}


variable "vpc_cidr_blocks" {
  type = string
  description = "defines VPC CIDR block"
  default = "10.0.0.0/016"
}