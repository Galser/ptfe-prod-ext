resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_-"
}

// let's ensure that DB name is up on
// Amazon standards
locals {
  db_name = join("", regexall("\\w+", var.name))
}

resource "aws_db_subnet_group" "tfe" {
  name        = "${local.db_name}-rds-subnet-group"
  description = "Terraform RDS subnet group"
  subnet_ids  = var.rds_subnets
  tags = {
    Name        = "${var.name}",
    "andriitag" = "true"
  }
}

resource "aws_db_instance" "tfe_db" {
  allocated_storage      = 50
  storage_type           = "gp2"
  engine                 = "postgres"
  engine_version         = "9.6.15"
  instance_class         = "db.m4.large"
  name                   = local.db_name
  db_subnet_group_name   = aws_db_subnet_group.tfe.id
  vpc_security_group_ids = var.security_groups
  username               = var.username
  password               = random_password.password.result
  #  parameter_group_name = "default."
  tags = {
    Name        = "${var.name}",
    "andriitag" = "true"
  }
  final_snapshot_identifier = "${local.db_name}-final-snap"
  skip_final_snapshot       = true
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