# Calling a child module remotely

module "ec2" {
    source = "github.com/Cigdemin/terraform-session-january//modules/ec2?ref=v1.0.0"
    env = "dev"
    ami = "ami-06e85d4c3149db26a"
    instance_type = "t2.micro"
}

#TerraformRegistry

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
  cidr_block = "10.0.0.0/16"
}

# github.com = domain name
# /Cigdemin = user/organization
#/terraform-session-january = repository
#/tree 
#/main = branch (default)
#/modules/ec2 ' subrepositories

# git release snapshot of your code zip or tar file
# git tag is sementic versioning

