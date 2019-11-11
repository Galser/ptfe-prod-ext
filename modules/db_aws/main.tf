resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "aws_db_instance" "tfe_db" {
  allocated_storage = 50
  storage_type      = "gp2"
  engine            = "postgres"
  engine_version    = "9.6.15"
  instance_class    = "db.m4.large"
  name              = var.name
  username          = var.username
  password          = random_password.password.result # var.password
  #  parameter_group_name = "default.mysql5.7"
}

# Not safe
resource "null_resource" "timed-pw-out" {
  triggers = {
    timey = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo DB creds user ${var.name}, pw ${random_password.password.result}"
  }
}