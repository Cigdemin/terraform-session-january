resource "random_password" "db_password" {
    length = 20
    special = true
    override_special = "%@"

}
data "aws_s3_object" "getting_db_password" {
    bucket = "terraform-session-september-backend-cigdem"
    key = "session-7/frontend/terraform.tfstate"
    fetch_owner = ["self"]
    