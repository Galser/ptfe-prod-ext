output "password" {
  value = random_password.password.result
}

output "name" {
  value = local.db_name
}

output "endpoint" {
  value = aws_db_instance.tfe_db.endpoint
}

output "host" {
  value = aws_db_instance.tfe_db.address
}


output "id" {
  value = aws_db_instance.tfe_db.id
}