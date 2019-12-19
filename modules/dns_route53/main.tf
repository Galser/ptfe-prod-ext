data "aws_route53_zone" "primary" {
  name         = var.domain
  private_zone = false
}

locals {
  backend = "${var.host}_backend"
}

resource "aws_route53_record" "site_backend" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = local.backend
  type    = "A"
  ttl     = "600"
  records = [var.record_ip]
}

resource "aws_route53_record" "site_lb" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = var.host
  records = [var.cname_target]
  type    = "CNAME"
  ttl     = 600
}
