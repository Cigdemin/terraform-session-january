terraform {
  backend "s3" {
    bucket = "terraform-session-september-backend-cigdem"
    region = "us-west-2"
    key    = "session-5/terraform.tfstate"  #where does terraform need to store your file.Path or 
    dynamodb_table = "terraform-session-sep-state-lock" #Lock table
  }
}

#Most important rule!
#you can not use any variables in key!
#


