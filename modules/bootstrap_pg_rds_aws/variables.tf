variable "rds_id" {
  description = "RDS instance ID"
}

variable "tfe_instance_ip" {
  description = "Instance IP to connect and run PSQL code"
}

variable "key_path" {
  description = "Local SSH key path (priavte part)"
}

# DB related vars
variable "dbbhost" {
  description = "PGSQL DB host"
}

variable "dbbase" {
  description = "PGSQL DB base name"
}

variable "dbuser" {
  description = "PGSQL DB user name"
}

variable "dbpassword" {
  description = "PGSQL DB password"
}
