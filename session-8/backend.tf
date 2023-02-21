terraform {
  backend "s3" {
    bucket = "terraform-session-september-backend-cigdem"
    region = "us-west-2"
    key = "session-8/terraform.tfstate"
    dynamodb_table = "terraform-session-sep-state-lock"
  }
}