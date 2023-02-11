terraform {
  backend "s3" {
    bucket = "terraform-session-september-backend-cigdem"
    region = "us-west-12"
    key    = "session-5/terraform.tfstate"  #where does terraform need to store your file.Path or 
  }
}
