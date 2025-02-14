variable "name" {
  type        = string
  description = "Balancer (or site) name"
}

variable "instances" {
  type        = list
  description = "List of instances"
}

variable "subnets" {
  type        = list
  description = "List of subnets"
}

variable "security_groups" {
  type        = list
  description = "List of security groups IDs"
}

variable "ssl_certificate_id" {
  type = string
  description = "ARN of the certificate create with ACM"
}