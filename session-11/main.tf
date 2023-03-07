resource "aws_sqs_queue" "main" {
  name = "${terraform.workspace}-sqs"
}

# terraform.workspace = workspace name

# for each, for loop in terraform
# dynamic resource creation in Terraform
# Terraform CLI vs Cloud vs Enterprise
# Terraform validate, fmt, import, providers, refresh, state, taint, show
# Environment Variable - TF_LOG, TF_LOG_PATH, TF_INPUT, TF_VAR_name, TF_CLI_ARG, 
# functions- slice, concat, lookup, file, 