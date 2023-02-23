terraform {
  backend "s3" {
    bucket = "terraform-session-september-backend-cigdem"
    region = "us-west-2"
    key = "session-9/dev/terraform.tfstate"
    dynamodb_table = "terraform-session-sep-state-lock"
  }
}