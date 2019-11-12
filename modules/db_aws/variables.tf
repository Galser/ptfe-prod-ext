variable "name" {
  type        = string
  description = "Name for DB and tags and etc"
}

variable "username" {
  type        = string
  description = "Name for Master DB user"
}

variable "rds_subnets" {
  #type        = list
  description = "Subnets IDs"
}


variable "security_groups" {
  type        = list
  description = "DB Security groups"
}

/* variable "password" {
  type        = string
  description = "Password fro the master user of DB"
} */