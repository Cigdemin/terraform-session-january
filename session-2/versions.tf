terraform {
  required_version = "~> 1.3.0"  #Terraform version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.53.0"  # AWS version
    }
  }
}
# terraform = v1.3.7
# AWS provider=v4.53.0
# Semantic Versioning
# v1.3.7
# 1 = major 
# 3 = minor
# 7 = patch

# >= 0.13, < 0.14 included all the patches starting from 0.13.1 to till 0.13.x
# ~> 0.13 = (~> = lazy constraints) same above 0.13.1 to till 0.13.x