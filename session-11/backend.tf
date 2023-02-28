terraform {
  backend "s3" {
    bucket = "terraform-session-september-backend-cigdem"
    region = "us-west-2"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-session-sep-state-lock"
    workspace_key_prefix = "session-11"
  }
}

#currently working space: default
#Backend file path: session-11/terraform.tfstate

#switch:dev
#backend file fath: session-11/dev/terraform.tfstate
#When you use Terraform workspace_key_prefixIt creates a terraform.tfstate file in following path
#workspace_key_prefix/workspace_name/key