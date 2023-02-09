variable "vpc_id" {
  type = string
  description = "to give vpc id"
  default = "vpc-08d1b3e58f4fb4b4b"
}
variable "vpc_name" {
  type = string
  description = "This is giving the vpc man"
  default = "my_task_vpcv1.1"
}
variable "vpc_cidr_block" {
  type = string
  description = "defines VPC CIDR block"
  default = "10.0.0.0/16"
}


