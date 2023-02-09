#input variable

variable "instance_type" {
  type = string
  description = "This is an instance thype for EC2 instaces"
  default = "t2.micro"
}
variable "env" {
  type = string
  description = "Indicates the environment"
  default = "dev"
}