variable "vpc_name" {
  type = string
  description = "This is giving the vpc man"
  default = "my_task_vpc"
}
variable "vpc_cidr_block" {
  type = string
  description = "defines VPC CIDR block"
  default = "10.0.0.0/16"
}
#variables for public subnet a

variable "availability_zone" {
  type = list(string)
  description = "Defines AZ for the subnet"
  default = ["us-west-2a","us-west-2b","us-west-2c" ]
}
#variables for CIDR blocks

variable "public_cidr_blocks" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "define public subnets CIDR blocks"
}
variable "private_cidr_blocks" {
  type = list(string)
  default = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  description = "define private subnets CIDR blocks"
}
variable "public_subnet_names" {
  type = list(string)
  default = ["public_a","public_b","public_c"]
  description = "define subnet names"
}
variable "private_subnet_names" {
  type = list(string)
  default = ["private_a","private_b","private_c"]
  description = "define subnet names"
}
variable "cidr_blocks" {
  type = string
  description = "defines CIDR block for all traffic"
  default = "0.0.0.0/0"
}