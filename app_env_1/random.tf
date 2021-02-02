resource "random_string" "prefix" {
  length  = 6
  upper   = false
  special = false
}

output "random_string" {
  value = random_string.prefix.result
}