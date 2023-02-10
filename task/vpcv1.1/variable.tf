variable "vpc_id" {
  type = string
  description = "to give vpc id"
  default = "vpc-08d1b3e58f4fb4b4b"
}
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

variable "availability_zone_a" {
  type = string
  description = "Defines AZ for the subnet"
  default = "us-west-2a" 
}
variable "availability_zone_b" {
  type = string
  description = "Defines AZ for the subnet"
  default = "us-west-2b" 
}
variable "availability_zone_c" {
  type = string
  description = "Defines AZ for the subnet"
  default = "us-west-2c" 
}
#variables for CIDR blocks

variable "cidr_block_public_a" {
  type = string
  default = "10.0.1.0/24"
}
variable "cidr_block_public_b" {
  type = string
  default = "10.0.2.0/24"
}
variable "cidr_block_public_z" {
  type = string
  default = "10.0.3.0/24"
}
variable "cidr_block_private_a" {
  type = string
  default = "10.0.11.0/24"
}
variable "cidr_block_private_b" {
  type = string
  default = "10.0.12.0/24"
}
variable "cidr_block_private_c" {
  type = string
  default = "10.0.13.0/24"
}
variable "cidr_blocks" {
  type = string
  description = "defines CIDR block for all traffic"
  default = "0.0.0.0/0"
}