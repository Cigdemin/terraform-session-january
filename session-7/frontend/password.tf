resource "random_password" "db_password" {
    length = 20
    special = true
    override_special = "%@"
    name = "db_password"
}
data "random_password" "db_password" {
  name = "db_password"
}

output "passwords" {
  value = random_password.db_password.result
}