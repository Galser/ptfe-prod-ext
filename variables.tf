variable "site_domain" {
  default = "hashicorp-success.com"
}

variable "site_record" {
  default = "tfe-pm-ext-1"
}

variable "region" {
  default = "eu-central-1"
}

variable "availabilityZone" {
  default = "eu-central-1a"
}

variable "vpc_tag" {
  default = "ag_ptfe_pm"
}

variable "disks_tag" {
  default = "ag_ptfe_pm"
}

variable "amis" {
  type = "map"
  default = {
    "us-east-2"    = "ami-00f03cfdc90a7a4dd",
    "eu-central-1" = "ami-08a162fe1419adb2a"
  }
}

variable "instance_type" {
  default = "m5.large"
}

variable "learntag" {
  type    = "string"
  default = "200tf"
}

variable "db_admin" {
  default = "adimini"
}

variable "ssl_certificate_id" {
  type = string
  description = "ARN of the certificate create with ACM"
  default = ""
}