# Terraform modules
# 1. Child module : where you declare resources
    # 1.1. Local Module= module is in your filesystem
    # 1.2.Remote Module = SCM,HTTP URL, Terraform Cloud or Enterprise Provate Registery
# 2. Root Module : call the child module, run Terraform command

module "ec2_instance" {
  source = "../../modules/ec2" #where the child module is
####################### Variables ###########################
  env = "dev"
  ami = "ami-06e85d4c3149db26a"
  instance_type = "t2.micro"
}

module "ec2_sg" {
  source = "../../modules/sg"
  env = "dev"  
}