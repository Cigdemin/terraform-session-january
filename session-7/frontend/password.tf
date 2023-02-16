resource "random_password" "db_password" {
    length = 20
    special = true
    override_special = "%@"
}
output "db_password" {
  value       = random_password.db_password.special
  description = "The password for logging in to the database."
}