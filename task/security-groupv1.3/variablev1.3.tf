#providers-team-env-app-resource-index = naming standard

# aws-cloud-dev-jerry-loadbalancer-0 

# Common Tags:

# 1. Name = aws-cloud-dev-jerry-loadbalancer-0
# 2. Environment = Dev
# 3. Team = Cloud 
# 4. App  = Jerry
# 5. Managed_By = "Terraform, Cloudformation, Python, Manual"
# 6. Owner = "Kris"

#input variable

variable "env" {
  type = string
  default = "dev"
}
variable "team" {
  type = string
  default = "september2022"
}
variable "app" {
  type = string
  default = "task"
}
variable "index" {
  type = string
  default = "0"
}
variable "managed_by" {
  type = string
  default = "terraform"
}
variable "owner" {
  type = string
  default = "cigdem"
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
variable "cidr_block_all" {
  type = string
  description = "defines CIDR block for all traffic"
  default = "0.0.0.0/0"
}