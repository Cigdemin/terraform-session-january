terraform {
  backend "s3" {
    bucket = "terraform-session-september-backend-cigdem"
    region = "us-west-2"
    key = "practiceversion/terraform.tfstate"
    dynamodb_table = "terraform-session-sep-state-lock"
  }
}