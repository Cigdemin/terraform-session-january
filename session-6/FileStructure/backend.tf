terraform{
    backend "s3" {
        bucket = "terraform-session-september-backend-cigdem"
        region = "us-west-2"
        key = "session-6/filestructure/_env_/terraform.tfstate"
        dynamodb_table = "terraform-session-sep-state-lock"
    }
}

# if you want to isolate infrastructure and reuse your configuration files you must isolate backend first
# isolation backend (terraform.tfstate) = isolating environment
# 1 backend at the time
# no variable in key of Backend!
