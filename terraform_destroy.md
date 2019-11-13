# Full run-log of infrastructure destruction

```bash 
 ~/******/ptfe-prod-ext (f-test-instructions) ●  terraform destroy

module.objectstorage_aws.random_id.bucket: Refreshing state... [id=8z-me8xdQhc]
module.db_aws.random_password.password: Refreshing state... [id=none]
module.sslcert_letsencrypt.tls_private_key.private_key: Refreshing state... [id=cc43dc114d59199efe7f6a9751c572bb59b25f48]
module.dns_cloudflare.data.cloudflare_zones.site_zone: Refreshing state...
module.db_aws.null_resource.timed-pw-out: Refreshing state... [id=5600194423524203756]
module.sslcert_letsencrypt.acme_registration.reg: Refreshing state... [id=https://acme-v02.api.letsencrypt.org/acme/acct/71555856]
module.sslcert_letsencrypt.acme_certificate.certificate: Refreshing state... [id=https://acme-v02.api.letsencrypt.org/acme/cert/030ec7d1c6d63cbdbca223799026b50f1bdf]
module.sslcert_letsencrypt.local_file.ssl_cert_file: Refreshing state... [id=ccf44ba782244b6b87383a346b2af587d106db6b]
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Refreshing state... [id=8fd075727eb6abdf50f26eb18597f7333356b33c]
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Refreshing state... [id=f9da0c5239e896b740c721fff7ac35e2e1fdd885]
module.sshkey_aws.aws_key_pair.sshkey: Refreshing state... [id=tfe-pm-ext-1]
module.vpc_aws.data.aws_availability_zones.available: Refreshing state...
module.vpc_aws.aws_vpc.ag_tfe: Refreshing state... [id=vpc-007cb9a6bac9e2056]
module.objectstorage_aws.aws_s3_bucket.tfebucket: Refreshing state... [id=tfe-pm-ext-1-f33fa67bcc5d4217]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Refreshing state... [id=igw-097b30d13e0739167]
module.vpc_aws.aws_subnet.ag_tfe_Subnet: Refreshing state... [id=subnet-0dd3ad87ba7c219bd]
module.vpc_aws.aws_route_table.ag_tfe_route_table: Refreshing state... [id=rtb-038a9d93712b49ad9]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_db: Refreshing state... [id=sg-097b56048d7f8d94e]
module.vpc_aws.aws_subnet.rds[1]: Refreshing state... [id=subnet-0bd70393030b8e7a6]
module.vpc_aws.aws_subnet.rds[2]: Refreshing state... [id=subnet-00b68673dbcbd26d5]
module.vpc_aws.aws_subnet.rds[0]: Refreshing state... [id=subnet-0dc5928696f84bc35]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb: Refreshing state... [id=sg-02f90cbef2cd06b47]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group: Refreshing state... [id=sg-06197fa14e8406227]
module.vpc_aws.aws_route.ag_tfe_internet_access: Refreshing state... [id=r-rtb-038a9d93712b49ad91080289494]
module.vpc_aws.aws_route_table_association.ag_tfe_association: Refreshing state... [id=rtbassoc-0b77c1537e059217a]
module.compute_aws.aws_instance.ptfe: Refreshing state... [id=i-02aa09e8e2a6dbba1]
module.db_aws.aws_db_subnet_group.tfe: Refreshing state... [id=agtfepmext1-rds-subnet-group]
module.db_aws.aws_db_instance.tfe_db: Refreshing state... [id=terraform-20191112145444196200000001]
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap: Refreshing state... [id=7082153628618354030]
module.dns_cloudflare.cloudflare_record.site_backend: Refreshing state... [id=880e1114db44e9bbdf366504eeb90269]
module.lb_aws.aws_elb.ptfe_lb: Refreshing state... [id=ag-clb-ag-clb-tfe-pm-ext-1]
module.dns_cloudflare.cloudflare_record.site_lb: Refreshing state... [id=d58d02c255a52014972e758880a2e45c]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap will be destroyed
  - resource "null_resource" "pg-rds-bootstrap" {
      - id       = "7082153628618354030" -> null
      - triggers = {
          - "rds" = "terraform-20191112145444196200000001"
        } -> null
    }

  # module.compute_aws.aws_instance.ptfe will be destroyed
  - resource "aws_instance" "ptfe" {
      - ami                          = "ami-08a162fe1419adb2a" -> null
      - arn                          = "arn:aws:ec2:eu-central-1:729476260648:instance/i-02aa09e8e2a6dbba1" -> null
      - associate_public_ip_address  = true -> null
      - availability_zone            = "eu-central-1a" -> null
      - cpu_core_count               = 1 -> null
      - cpu_threads_per_core         = 2 -> null
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
      - get_password_data            = false -> null
      - id                           = "i-02aa09e8e2a6dbba1" -> null
      - instance_state               = "running" -> null
      - instance_type                = "m5.large" -> null
      - ipv6_address_count           = 0 -> null
      - ipv6_addresses               = [] -> null
      - key_name                     = "tfe-pm-ext-1" -> null
      - monitoring                   = false -> null
      - primary_network_interface_id = "eni-09e71c38c3d51c7bf" -> null
      - private_dns                  = "ip-10-0-1-100.eu-central-1.compute.internal" -> null
      - private_ip                   = "10.0.1.100" -> null
      - public_dns                   = "ec2-18-185-179-32.eu-central-1.compute.amazonaws.com" -> null
      - public_ip                    = "18.185.179.32" -> null
      - security_groups              = [] -> null
      - source_dest_check            = true -> null
      - subnet_id                    = "subnet-0dd3ad87ba7c219bd" -> null
      - tags                         = {
          - "Name"      = "ag-tfe-pm-ext-1-andrii"
          - "andriitag" = "true"
        } -> null
      - tenancy                      = "default" -> null
      - volume_tags                  = {
          - "Name"      = "ag-tfe-pm-ext-1-andrii"
          - "andriitag" = "true"
        } -> null
      - vpc_security_group_ids       = [
          - "sg-06197fa14e8406227",
        ] -> null

      - root_block_device {
          - delete_on_termination = true -> null
          - encrypted             = false -> null
          - iops                  = 150 -> null
          - volume_id             = "vol-083035bfa8a5ac564" -> null
          - volume_size           = 50 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # module.db_aws.aws_db_instance.tfe_db will be destroyed
  - resource "aws_db_instance" "tfe_db" {
      - address                               = "terraform-20191112145444196200000001.cfzxhhyh79j5.eu-central-1.rds.amazonaws.com" -> null
      - allocated_storage                     = 50 -> null
      - arn                                   = "arn:aws:rds:eu-central-1:729476260648:db:terraform-20191112145444196200000001" -> null
      - auto_minor_version_upgrade            = true -> null
      - availability_zone                     = "eu-central-1a" -> null
      - backup_retention_period               = 0 -> null
      - backup_window                         = "03:28-03:58" -> null
      - ca_cert_identifier                    = "rds-ca-2015" -> null
      - copy_tags_to_snapshot                 = false -> null
      - db_subnet_group_name                  = "agtfepmext1-rds-subnet-group" -> null
      - deletion_protection                   = false -> null
      - enabled_cloudwatch_logs_exports       = [] -> null
      - endpoint                              = "terraform-20191112145444196200000001.cfzxhhyh79j5.eu-central-1.rds.amazonaws.com:5432" -> null
      - engine                                = "postgres" -> null
      - engine_version                        = "9.6.15" -> null
      - final_snapshot_identifier             = "agtfepmext1-final-snap" -> null
      - hosted_zone_id                        = "Z1RLNUO7B9Q6NB" -> null
      - iam_database_authentication_enabled   = false -> null
      - id                                    = "terraform-20191112145444196200000001" -> null
      - identifier                            = "terraform-20191112145444196200000001" -> null
      - instance_class                        = "db.m4.large" -> null
      - iops                                  = 0 -> null
      - license_model                         = "postgresql-license" -> null
      - maintenance_window                    = "thu:23:23-thu:23:53" -> null
      - max_allocated_storage                 = 0 -> null
      - monitoring_interval                   = 0 -> null
      - multi_az                              = false -> null
      - name                                  = "agtfepmext1" -> null
      - option_group_name                     = "default:postgres-9-6" -> null
      - parameter_group_name                  = "default.postgres9.6" -> null
      - password                              = (sensitive value)
      - performance_insights_enabled          = false -> null
      - performance_insights_retention_period = 0 -> null
      - port                                  = 5432 -> null
      - publicly_accessible                   = false -> null
      - replicas                              = [] -> null
      - resource_id                           = "db-VR327VCQKDCCUAJJL2YTOTUHCE" -> null
      - security_group_names                  = [] -> null
      - skip_final_snapshot                   = true -> null
      - status                                = "available" -> null
      - storage_encrypted                     = false -> null
      - storage_type                          = "gp2" -> null
      - tags                                  = {
          - "Name"      = "ag-tfe-pm-ext-1"
          - "andriitag" = "true"
        } -> null
      - username                              = "adimini" -> null
      - vpc_security_group_ids                = [
          - "sg-097b56048d7f8d94e",
        ] -> null
    }

  # module.db_aws.aws_db_subnet_group.tfe will be destroyed
  - resource "aws_db_subnet_group" "tfe" {
      - arn         = "arn:aws:rds:eu-central-1:729476260648:subgrp:agtfepmext1-rds-subnet-group" -> null
      - description = "Terraform RDS subnet group" -> null
      - id          = "agtfepmext1-rds-subnet-group" -> null
      - name        = "agtfepmext1-rds-subnet-group" -> null
      - subnet_ids  = [
          - "subnet-00b68673dbcbd26d5",
          - "subnet-0bd70393030b8e7a6",
          - "subnet-0dc5928696f84bc35",
        ] -> null
      - tags        = {
          - "Name"      = "ag-tfe-pm-ext-1"
          - "andriitag" = "true"
        } -> null
    }

  # module.db_aws.null_resource.timed-pw-out will be destroyed
  - resource "null_resource" "timed-pw-out" {
      - id       = "5600194423524203756" -> null
      - triggers = {
          - "timey" = "2019-11-13T10:50:27Z"
        } -> null
    }

  # module.db_aws.random_password.password will be destroyed
  - resource "random_password" "password" {
      - id               = "none" -> null
      - length           = 16 -> null
      - lower            = true -> null
      - min_lower        = 0 -> null
      - min_numeric      = 0 -> null
      - min_special      = 0 -> null
      - min_upper        = 0 -> null
      - number           = true -> null
      - override_special = "_-" -> null
      - result           = (sensitive value)
      - special          = true -> null
      - upper            = true -> null
    }

  # module.dns_cloudflare.cloudflare_record.site_backend will be destroyed
  - resource "cloudflare_record" "site_backend" {
      - created_on  = "2019-11-11T10:35:55.162775Z" -> null
      - data        = {} -> null
      - hostname    = "tfe-pm-ext-1_backend.guselietov.com" -> null
      - id          = "880e1114db44e9bbdf366504eeb90269" -> null
      - metadata    = {
          - "auto_added"             = "false"
          - "managed_by_apps"        = "false"
          - "managed_by_argo_tunnel" = "false"
        } -> null
      - modified_on = "2019-11-11T10:35:55.162775Z" -> null
      - name        = "tfe-pm-ext-1_backend" -> null
      - priority    = 0 -> null
      - proxiable   = true -> null
      - proxied     = false -> null
      - ttl         = 600 -> null
      - type        = "A" -> null
      - value       = "18.185.179.32" -> null
      - zone_id     = "2032750a75777e59b3bf6c73333ee2b0" -> null
    }

  # module.dns_cloudflare.cloudflare_record.site_lb will be destroyed
  - resource "cloudflare_record" "site_lb" {
      - created_on  = "2019-11-11T10:35:58.23866Z" -> null
      - data        = {} -> null
      - hostname    = "tfe-pm-ext-1.guselietov.com" -> null
      - id          = "d58d02c255a52014972e758880a2e45c" -> null
      - metadata    = {
          - "auto_added"             = "false"
          - "managed_by_apps"        = "false"
          - "managed_by_argo_tunnel" = "false"
        } -> null
      - modified_on = "2019-11-11T10:35:58.23866Z" -> null
      - name        = "tfe-pm-ext-1" -> null
      - priority    = 0 -> null
      - proxiable   = true -> null
      - proxied     = false -> null
      - ttl         = 600 -> null
      - type        = "CNAME" -> null
      - value       = "ag-clb-ag-clb-tfe-pm-ext-1-1743163037.eu-central-1.elb.amazonaws.com" -> null
      - zone_id     = "2032750a75777e59b3bf6c73333ee2b0" -> null
    }

  # module.lb_aws.aws_elb.ptfe_lb will be destroyed
  - resource "aws_elb" "ptfe_lb" {
      - arn                         = "arn:aws:elasticloadbalancing:eu-central-1:729476260648:loadbalancer/ag-clb-ag-clb-tfe-pm-ext-1" -> null
      - availability_zones          = [
          - "eu-central-1a",
        ] -> null
      - connection_draining         = true -> null
      - connection_draining_timeout = 400 -> null
      - cross_zone_load_balancing   = true -> null
      - dns_name                    = "ag-clb-ag-clb-tfe-pm-ext-1-1743163037.eu-central-1.elb.amazonaws.com" -> null
      - id                          = "ag-clb-ag-clb-tfe-pm-ext-1" -> null
      - idle_timeout                = 400 -> null
      - instances                   = [
          - "i-02aa09e8e2a6dbba1",
        ] -> null
      - internal                    = false -> null
      - name                        = "ag-clb-ag-clb-tfe-pm-ext-1" -> null
      - security_groups             = [
          - "sg-02f90cbef2cd06b47",
        ] -> null
      - source_security_group       = "729476260648/ag_ptfe_pm-sg-elb" -> null
      - source_security_group_id    = "sg-02f90cbef2cd06b47" -> null
      - subnets                     = [
          - "subnet-0dd3ad87ba7c219bd",
        ] -> null
      - tags                        = {
          - "Name"      = "ag-clb-tfe-pm-ext-1"
          - "andriitag" = "true"
        } -> null
      - zone_id                     = "Z215JYRZR1TBD5" -> null

      - health_check {
          - healthy_threshold   = 3 -> null
          - interval            = 30 -> null
          - target              = "TCP:8800" -> null
          - timeout             = 10 -> null
          - unhealthy_threshold = 10 -> null
        }

      - listener {
          - instance_port     = 443 -> null
          - instance_protocol = "tcp" -> null
          - lb_port           = 443 -> null
          - lb_protocol       = "tcp" -> null
        }
      - listener {
          - instance_port     = 8800 -> null
          - instance_protocol = "tcp" -> null
          - lb_port           = 8800 -> null
          - lb_protocol       = "tcp" -> null
        }
    }

  # module.objectstorage_aws.aws_s3_bucket.tfebucket will be destroyed
  - resource "aws_s3_bucket" "tfebucket" {
      - acl                         = "private" -> null
      - arn                         = "arn:aws:s3:::tfe-pm-ext-1-f33fa67bcc5d4217" -> null
      - bucket                      = "tfe-pm-ext-1-f33fa67bcc5d4217" -> null
      - bucket_domain_name          = "tfe-pm-ext-1-f33fa67bcc5d4217.s3.amazonaws.com" -> null
      - bucket_regional_domain_name = "tfe-pm-ext-1-f33fa67bcc5d4217.s3.eu-central-1.amazonaws.com" -> null
      - force_destroy               = false -> null
      - hosted_zone_id              = "Z21DNDUVLTQW6Q" -> null
      - id                          = "tfe-pm-ext-1-f33fa67bcc5d4217" -> null
      - region                      = "eu-central-1" -> null
      - request_payer               = "BucketOwner" -> null
      - tags                        = {
          - "Name"      = "tfe-pm-ext-1"
          - "andriitag" = "true"
        } -> null

      - lifecycle_rule {
          - abort_incomplete_multipart_upload_days = 0 -> null
          - enabled                                = true -> null
          - id                                     = "tf-s3-lifecycle-20191111140133092100000001" -> null
          - tags                                   = {} -> null

          - transition {
              - days          = 30 -> null
              - storage_class = "STANDARD_IA" -> null
            }
          - transition {
              - days          = 60 -> null
              - storage_class = "GLACIER" -> null
            }
        }

      - versioning {
          - enabled    = true -> null
          - mfa_delete = false -> null
        }
    }

  # module.objectstorage_aws.random_id.bucket will be destroyed
  - resource "random_id" "bucket" {
      - b64         = "8z-me8xdQhc" -> null
      - b64_std     = "8z+me8xdQhc=" -> null
      - b64_url     = "8z-me8xdQhc" -> null
      - byte_length = 8 -> null
      - dec         = "17527911325389111831" -> null
      - hex         = "f33fa67bcc5d4217" -> null
      - id          = "8z-me8xdQhc" -> null
      - keepers     = {
          - "ami_id" = "tfe-pm-ext-1"
        } -> null
    }

  # module.sshkey_aws.aws_key_pair.sshkey will be destroyed
  - resource "aws_key_pair" "sshkey" {
      - fingerprint = "01:ca:46:0b:ea:ba:4e:28:0e:c9:b4:9e:2d:f3:29:66" -> null
      - id          = "tfe-pm-ext-1" -> null
      - key_name    = "tfe-pm-ext-1" -> null
      - public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC704xhVAxg9Bhq0jIbABWVjKl2DW7apvfFj3UtvActT9a9w1Xt5Fa2jEFuzMXceFtpDjgq5j8E8vsrICu8Wpeqwuo2SR2aAjEjBDfJzOM3kmF9wuWdpacDhVm1luPJiqqM4wLAPufht5vhdlqD8QtW/q84MMHbbkXNjdvgqsIcvDWcCRLQDa1Du3ElF9V+/n182ihIDfQCUtQS0zc9lIcUemZMSLRhxAWA9BZYCu8wnUuLBE/fv8apC0NxOayklSBEj7Pk/HxJnYxTeskqGs5MkzHydObPZSnAtX4Hfe1KlmsAVwt6Sj2bG2AYpt9G0jF7Oq9sYQ6nBTMAxENIsmhB andrii@guselietovs-mbp.home" -> null
    }

  # module.sslcert_letsencrypt.acme_certificate.certificate will be destroyed
  - resource "acme_certificate" "certificate" {
      - account_key_pem    = (sensitive value)
      - certificate_domain = "tfe-pm-ext-1.guselietov.com" -> null
      - certificate_p12    = (sensitive value)
      - certificate_pem    = "-----BEGIN CERTIFICATE-----\nMIIFbTCCBFWgAwIBAgISAw7H0cbWPL28oiN5kCa1DxvfMA0GCSqGSIb3DQEBCwUA\nMEoxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1MZXQncyBFbmNyeXB0MSMwIQYDVQQD\nExpMZXQncyBFbmNyeXB0IEF1dGhvcml0eSBYMzAeFw0xOTExMTExNDA1NDFaFw0y\nMDAyMDkxNDA1NDFaMCYxJDAiBgNVBAMTG3RmZS1wbS1leHQtMS5ndXNlbGlldG92\nLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANl7lHT+oPmoLbLz\nDHFXxYmQSzg/sOroKCPqfXtEKzaaQjhikwcBDht3Mlu2FLJMmVUgFNCgxtX3vmnE\nfjg4ZTdYBIwANnajuAk4w1vq9y8u0WscYz2TR+anBwt0xSu0fThOEd4GiTfzWVbE\na6KxFA+tkdb+hZ5N5bQSTeKFSlLEMlzzPAqdLNiNd2gYTa/+ktgy+ooVvfkWP1fR\nZKxlOv+nE/7isjN/yduT5EbzJQPKIJP0euYvZkKBCs34D0ep6U+hhUb7UajSvOQ+\n3T221tX9xIcWjlVYUZ9rcbUfwJgpyPOEw19U7e2EjPW6VAxg4+sjn08Loa7viwLw\ngYqeAXsCAwEAAaOCAm8wggJrMA4GA1UdDwEB/wQEAwIFoDAdBgNVHSUEFjAUBggr\nBgEFBQcDAQYIKwYBBQUHAwIwDAYDVR0TAQH/BAIwADAdBgNVHQ4EFgQUiPFJfBnr\nYbp3uyG35JK1gcRFNZcwHwYDVR0jBBgwFoAUqEpqYwR93brm0Tm3pkVl7/Oo7KEw\nbwYIKwYBBQUHAQEEYzBhMC4GCCsGAQUFBzABhiJodHRwOi8vb2NzcC5pbnQteDMu\nbGV0c2VuY3J5cHQub3JnMC8GCCsGAQUFBzAChiNodHRwOi8vY2VydC5pbnQteDMu\nbGV0c2VuY3J5cHQub3JnLzAmBgNVHREEHzAdght0ZmUtcG0tZXh0LTEuZ3VzZWxp\nZXRvdi5jb20wTAYDVR0gBEUwQzAIBgZngQwBAgEwNwYLKwYBBAGC3xMBAQEwKDAm\nBggrBgEFBQcCARYaaHR0cDovL2Nwcy5sZXRzZW5jcnlwdC5vcmcwggEDBgorBgEE\nAdZ5AgQCBIH0BIHxAO8AdgCyHgXMi6LNiiBOh2b5K7mKJSBna9r6cOeySVMt74uQ\nXgAAAW5a/8OMAAAEAwBHMEUCIQDhorYWkZvjGmtofbMorhRKHLXS9LShjAprLncN\nNDN6rgIgYySwOxsbBvCOa85dkloC6wbbw9QbPJtBx1HkRX2ljC0AdQBvU3asMfAx\nGdiZAKRRFf93FRwR2QLBACkGjbIImjfZEwAAAW5a/8PAAAAEAwBGMEQCIGBUoybA\ncnydYbMxgjQwCRsP3wX+TzWLE1AizfCJmr+TAiA5YoribMi1hizC4Zu8M/aIMlU0\n9xXQ6pKpn0iFWz851DANBgkqhkiG9w0BAQsFAAOCAQEAKl4fTdlmHVm1SRbG2VnJ\n2HODAsJmqUdHLv1eWhFOmm1cxjCqrPljfS2h6nq16jeaL5o5AwO1OxDp0KtdRpxj\n0zSLO6tZgk5dDbrHU2/hCrwSVWLN+mfAlBsMSMueD4kltlkIPRDnTMWP51hK/Rh/\nweQiO3bilHpXJcM4ne0/nPalLai//XPXSYIX7MFpvYvM6H3GaMdP61M8u9KCWtCo\nQC5SwiiosUEXnZ3kvpqMeO1lc52taIUsW1/UaokjfbNACc2DS5tLM8DXqY8WSdt3\n/oZS5+iA+pp3AhszskgwqjWUQ19SF900wX9EmAPhshowHMWq/aA2Y/OzDKFY9wYK\nog==\n-----END CERTIFICATE-----\n" -> null
      - certificate_url    = "https://acme-v02.api.letsencrypt.org/acme/cert/030ec7d1c6d63cbdbca223799026b50f1bdf" -> null
      - common_name        = "tfe-pm-ext-1.guselietov.com" -> null
      - id                 = "https://acme-v02.api.letsencrypt.org/acme/cert/030ec7d1c6d63cbdbca223799026b50f1bdf" -> null
      - issuer_pem         = "-----BEGIN CERTIFICATE-----\nMIIEkjCCA3qgAwIBAgIQCgFBQgAAAVOFc2oLheynCDANBgkqhkiG9w0BAQsFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTE2MDMxNzE2NDA0NloXDTIxMDMxNzE2NDA0Nlow\nSjELMAkGA1UEBhMCVVMxFjAUBgNVBAoTDUxldCdzIEVuY3J5cHQxIzAhBgNVBAMT\nGkxldCdzIEVuY3J5cHQgQXV0aG9yaXR5IFgzMIIBIjANBgkqhkiG9w0BAQEFAAOC\nAQ8AMIIBCgKCAQEAnNMM8FrlLke3cl03g7NoYzDq1zUmGSXhvb418XCSL7e4S0EF\nq6meNQhY7LEqxGiHC6PjdeTm86dicbp5gWAf15Gan/PQeGdxyGkOlZHP/uaZ6WA8\nSMx+yk13EiSdRxta67nsHjcAHJyse6cF6s5K671B5TaYucv9bTyWaN8jKkKQDIZ0\nZ8h/pZq4UmEUEz9l6YKHy9v6Dlb2honzhT+Xhq+w3Brvaw2VFn3EK6BlspkENnWA\na6xK8xuQSXgvopZPKiAlKQTGdMDQMc2PMTiVFrqoM7hD8bEfwzB/onkxEz0tNvjj\n/PIzark5McWvxI0NHWQWM6r6hCm21AvA2H3DkwIDAQABo4IBfTCCAXkwEgYDVR0T\nAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAYYwfwYIKwYBBQUHAQEEczBxMDIG\nCCsGAQUFBzABhiZodHRwOi8vaXNyZy50cnVzdGlkLm9jc3AuaWRlbnRydXN0LmNv\nbTA7BggrBgEFBQcwAoYvaHR0cDovL2FwcHMuaWRlbnRydXN0LmNvbS9yb290cy9k\nc3Ryb290Y2F4My5wN2MwHwYDVR0jBBgwFoAUxKexpHsscfrb4UuQdf/EFWCFiRAw\nVAYDVR0gBE0wSzAIBgZngQwBAgEwPwYLKwYBBAGC3xMBAQEwMDAuBggrBgEFBQcC\nARYiaHR0cDovL2Nwcy5yb290LXgxLmxldHNlbmNyeXB0Lm9yZzA8BgNVHR8ENTAz\nMDGgL6AthitodHRwOi8vY3JsLmlkZW50cnVzdC5jb20vRFNUUk9PVENBWDNDUkwu\nY3JsMB0GA1UdDgQWBBSoSmpjBH3duubRObemRWXv86jsoTANBgkqhkiG9w0BAQsF\nAAOCAQEA3TPXEfNjWDjdGBX7CVW+dla5cEilaUcne8IkCJLxWh9KEik3JHRRHGJo\nuM2VcGfl96S8TihRzZvoroed6ti6WqEBmtzw3Wodatg+VyOeph4EYpr/1wXKtx8/\nwApIvJSwtmVi4MFU5aMqrSDE6ea73Mj2tcMyo5jMd6jmeWUHK8so/joWUoHOUgwu\nX4Po1QYz+3dszkDqMp4fklxBwXRsW10KXzPMTZ+sOPAveyxindmjkW8lGy+QsRlG\nPfZ+G6Z6h7mjem0Y+iWlkYcV4PIWL1iwBi8saCbGS5jN2p8M+X+Q7UNKEkROb3N6\nKOqkqm57TH2H3eDJAkSnh6/DNFu0Qg==\n-----END CERTIFICATE-----\n" -> null
      - key_type           = "2048" -> null
      - min_days_remaining = 30 -> null
      - must_staple        = false -> null
      - private_key_pem    = (sensitive value)

      - dns_challenge {
          - config   = (sensitive value)
          - provider = "cloudflare" -> null
        }
    }

  # module.sslcert_letsencrypt.acme_registration.reg will be destroyed
  - resource "acme_registration" "reg" {
      - account_key_pem  = (sensitive value)
      - email_address    = "andrii@guselietov.com" -> null
      - id               = "https://acme-v02.api.letsencrypt.org/acme/acct/71555856" -> null
      - registration_url = "https://acme-v02.api.letsencrypt.org/acme/acct/71555856" -> null
    }

  # module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file will be destroyed
  - resource "local_file" "ssl_cert_bundle_file" {
      - directory_permission = "0777" -> null
      - file_permission      = "0777" -> null
      - filename             = "./site_ssl_cert_bundle.pem" -> null
      - id                   = "8fd075727eb6abdf50f26eb18597f7333356b33c" -> null
      - sensitive_content    = (sensitive value)
    }

  # module.sslcert_letsencrypt.local_file.ssl_cert_file will be destroyed
  - resource "local_file" "ssl_cert_file" {
      - directory_permission = "0777" -> null
      - file_permission      = "0777" -> null
      - filename             = "./site_ssl_cert.pem" -> null
      - id                   = "ccf44ba782244b6b87383a346b2af587d106db6b" -> null
      - sensitive_content    = (sensitive value)
    }

  # module.sslcert_letsencrypt.local_file.ssl_private_key_file will be destroyed
  - resource "local_file" "ssl_private_key_file" {
      - directory_permission = "0777" -> null
      - file_permission      = "0777" -> null
      - filename             = "./site_ssl_private_key.pem" -> null
      - id                   = "f9da0c5239e896b740c721fff7ac35e2e1fdd885" -> null
      - sensitive_content    = (sensitive value)
    }

  # module.sslcert_letsencrypt.tls_private_key.private_key will be destroyed
  - resource "tls_private_key" "private_key" {
      - algorithm                  = "RSA" -> null
      - ecdsa_curve                = "P224" -> null
      - id                         = "cc43dc114d59199efe7f6a9751c572bb59b25f48" -> null
      - private_key_pem            = (sensitive value)
      - public_key_fingerprint_md5 = "5f:13:f0:23:f2:6a:45:86:87:d4:e9:f7:7d:33:d1:0a" -> null
      - public_key_openssh         = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3Em/3zqB1YO6+kIT1lbFXFVUxHpM88uZjelzfmTkJYQ2H6JDKPuXFHetRi68KUVxK8T0Uk8BN9LVpkwmKWqengJurcCclTZ6lkew4iNc7uV2Ql/aM3YxgovLq4UFEQ7uxpId5ROYK8JMZ126lLcGAgDZBCWgETGy4dQbXrTbrOPsEv0/fuCEtk+VG1UynG8pjZv+8W10lZdLry48BCV8zTGjUqb6zeVttQ7SAprpkMRBR/NXahX0D2xEDdzC4J+7Zfoo12ZmLrFqqFDRQh2a26dASIeHw84qkGhkT6x2YGoHlyG5js88ilFx8Yfqs/Dx3exdtVEm9g+lRJgGhrOAL\n" -> null
      - public_key_pem             = "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtxJv986gdWDuvpCE9ZWx\nVxVVMR6TPPLmY3pc35k5CWENh+iQyj7lxR3rUYuvClFcSvE9FJPATfS1aZMJilqn\np4Cbq3AnJU2epZHsOIjXO7ldkJf2jN2MYKLy6uFBREO7saSHeUTmCvCTGddupS3B\ngIA2QQloBExsuHUG16026zj7BL9P37ghLZPlRtVMpxvKY2b/vFtdJWXS68uPAQlf\nM0xo1Km+s3lbbUO0gKa6ZDEQUfzV2oV9A9sRA3cwuCfu2X6KNdmZi6xaqhQ0UIdm\ntunQEiHh8POKpBoZE+sdmBqB5chuY7PPIpRcfGH6rPw8d3sXbVRJvYPpUSYBoazg\nCwIDAQAB\n-----END PUBLIC KEY-----\n" -> null
      - rsa_bits                   = 2048 -> null
    }

  # module.vpc_aws.aws_internet_gateway.ag_tfe_GW will be destroyed
  - resource "aws_internet_gateway" "ag_tfe_GW" {
      - id       = "igw-097b30d13e0739167" -> null
      - owner_id = "729476260648" -> null
      - tags     = {
          - "Name" = "ag_ptfe_pm_internet_gateway"
        } -> null
      - vpc_id   = "vpc-007cb9a6bac9e2056" -> null
    }

  # module.vpc_aws.aws_route.ag_tfe_internet_access will be destroyed
  - resource "aws_route" "ag_tfe_internet_access" {
      - destination_cidr_block = "0.0.0.0/0" -> null
      - gateway_id             = "igw-097b30d13e0739167" -> null
      - id                     = "r-rtb-038a9d93712b49ad91080289494" -> null
      - origin                 = "CreateRoute" -> null
      - route_table_id         = "rtb-038a9d93712b49ad9" -> null
      - state                  = "active" -> null
    }

  # module.vpc_aws.aws_route_table.ag_tfe_route_table will be destroyed
  - resource "aws_route_table" "ag_tfe_route_table" {
      - id               = "rtb-038a9d93712b49ad9" -> null
      - owner_id         = "729476260648" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - cidr_block                = "0.0.0.0/0"
              - egress_only_gateway_id    = ""
              - gateway_id                = "igw-097b30d13e0739167"
              - instance_id               = ""
              - ipv6_cidr_block           = ""
              - nat_gateway_id            = ""
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_peering_connection_id = ""
            },
        ] -> null
      - tags             = {
          - "Name" = "ag_ptfe_pm_route_table"
        } -> null
      - vpc_id           = "vpc-007cb9a6bac9e2056" -> null
    }

  # module.vpc_aws.aws_route_table_association.ag_tfe_association will be destroyed
  - resource "aws_route_table_association" "ag_tfe_association" {
      - id             = "rtbassoc-0b77c1537e059217a" -> null
      - route_table_id = "rtb-038a9d93712b49ad9" -> null
      - subnet_id      = "subnet-0dd3ad87ba7c219bd" -> null
    }

  # module.vpc_aws.aws_security_group.ag_tfe_Security_Group will be destroyed
  - resource "aws_security_group" "ag_tfe_Security_Group" {
      - arn                    = "arn:aws:ec2:eu-central-1:729476260648:security-group/sg-06197fa14e8406227" -> null
      - description            = "ag_ptfe_pm Security Group" -> null
      - egress                 = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 1024
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 65535
            },
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 443
            },
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 80
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 80
            },
        ] -> null
      - id                     = "sg-06197fa14e8406227" -> null
      - ingress                = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 22
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 22
            },
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 443
            },
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 8800
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 8800
            },
        ] -> null
      - name                   = "ag_ptfe_pm Security Group" -> null
      - owner_id               = "729476260648" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "ag_ptfe_pm_security_group"
        } -> null
      - vpc_id                 = "vpc-007cb9a6bac9e2056" -> null
    }

  # module.vpc_aws.aws_security_group.ag_tfe_Security_Group_db will be destroyed
  - resource "aws_security_group" "ag_tfe_Security_Group_db" {
      - arn                    = "arn:aws:ec2:eu-central-1:729476260648:security-group/sg-097b56048d7f8d94e" -> null
      - description            = "ag_ptfe_pm-sg-db" -> null
      - egress                 = [] -> null
      - id                     = "sg-097b56048d7f8d94e" -> null
      - ingress                = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 5432
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 5432
            },
        ] -> null
      - name                   = "ag_ptfe_pm-sg-db" -> null
      - owner_id               = "729476260648" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "ag_ptfe_pm_security_group"
        } -> null
      - vpc_id                 = "vpc-007cb9a6bac9e2056" -> null
    }

  # module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb will be destroyed
  - resource "aws_security_group" "ag_tfe_Security_Group_elb" {
      - arn                    = "arn:aws:ec2:eu-central-1:729476260648:security-group/sg-02f90cbef2cd06b47" -> null
      - description            = "ag_ptfe_pm ELB Security Group" -> null
      - egress                 = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 0
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "-1"
              - security_groups  = []
              - self             = false
              - to_port          = 0
            },
        ] -> null
      - id                     = "sg-02f90cbef2cd06b47" -> null
      - ingress                = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 443
            },
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 8800
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 8800
            },
        ] -> null
      - name                   = "ag_ptfe_pm-sg-elb" -> null
      - owner_id               = "729476260648" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {} -> null
      - vpc_id                 = "vpc-007cb9a6bac9e2056" -> null
    }

  # module.vpc_aws.aws_subnet.ag_tfe_Subnet will be destroyed
  - resource "aws_subnet" "ag_tfe_Subnet" {
      - arn                             = "arn:aws:ec2:eu-central-1:729476260648:subnet/subnet-0dd3ad87ba7c219bd" -> null
      - assign_ipv6_address_on_creation = false -> null
      - availability_zone               = "eu-central-1a" -> null
      - availability_zone_id            = "euc1-az2" -> null
      - cidr_block                      = "10.0.1.0/24" -> null
      - id                              = "subnet-0dd3ad87ba7c219bd" -> null
      - map_public_ip_on_launch         = true -> null
      - owner_id                        = "729476260648" -> null
      - tags                            = {
          - "Name" = "ag_ptfe_pm_subnet"
        } -> null
      - vpc_id                          = "vpc-007cb9a6bac9e2056" -> null
    }

  # module.vpc_aws.aws_subnet.rds[0] will be destroyed
  - resource "aws_subnet" "rds" {
      - arn                             = "arn:aws:ec2:eu-central-1:729476260648:subnet/subnet-0dc5928696f84bc35" -> null
      - assign_ipv6_address_on_creation = false -> null
      - availability_zone               = "eu-central-1a" -> null
      - availability_zone_id            = "euc1-az2" -> null
      - cidr_block                      = "10.0.3.0/24" -> null
      - id                              = "subnet-0dc5928696f84bc35" -> null
      - map_public_ip_on_launch         = true -> null
      - owner_id                        = "729476260648" -> null
      - tags                            = {} -> null
      - vpc_id                          = "vpc-007cb9a6bac9e2056" -> null
    }

  # module.vpc_aws.aws_subnet.rds[1] will be destroyed
  - resource "aws_subnet" "rds" {
      - arn                             = "arn:aws:ec2:eu-central-1:729476260648:subnet/subnet-0bd70393030b8e7a6" -> null
      - assign_ipv6_address_on_creation = false -> null
      - availability_zone               = "eu-central-1b" -> null
      - availability_zone_id            = "euc1-az3" -> null
      - cidr_block                      = "10.0.4.0/24" -> null
      - id                              = "subnet-0bd70393030b8e7a6" -> null
      - map_public_ip_on_launch         = true -> null
      - owner_id                        = "729476260648" -> null
      - tags                            = {} -> null
      - vpc_id                          = "vpc-007cb9a6bac9e2056" -> null
    }

  # module.vpc_aws.aws_subnet.rds[2] will be destroyed
  - resource "aws_subnet" "rds" {
      - arn                             = "arn:aws:ec2:eu-central-1:729476260648:subnet/subnet-00b68673dbcbd26d5" -> null
      - assign_ipv6_address_on_creation = false -> null
      - availability_zone               = "eu-central-1c" -> null
      - availability_zone_id            = "euc1-az1" -> null
      - cidr_block                      = "10.0.5.0/24" -> null
      - id                              = "subnet-00b68673dbcbd26d5" -> null
      - map_public_ip_on_launch         = true -> null
      - owner_id                        = "729476260648" -> null
      - tags                            = {} -> null
      - vpc_id                          = "vpc-007cb9a6bac9e2056" -> null
    }

  # module.vpc_aws.aws_vpc.ag_tfe will be destroyed
  - resource "aws_vpc" "ag_tfe" {
      - arn                              = "arn:aws:ec2:eu-central-1:729476260648:vpc/vpc-007cb9a6bac9e2056" -> null
      - assign_generated_ipv6_cidr_block = false -> null
      - cidr_block                       = "10.0.0.0/16" -> null
      - default_network_acl_id           = "acl-0b75677838898924c" -> null
      - default_route_table_id           = "rtb-00d305bcd36af2250" -> null
      - default_security_group_id        = "sg-0d1f0e7aa38ea49b4" -> null
      - dhcp_options_id                  = "dopt-4f934827" -> null
      - enable_dns_hostnames             = true -> null
      - enable_dns_support               = true -> null
      - id                               = "vpc-007cb9a6bac9e2056" -> null
      - instance_tenancy                 = "default" -> null
      - main_route_table_id              = "rtb-00d305bcd36af2250" -> null
      - owner_id                         = "729476260648" -> null
      - tags                             = {
          - "Name" = "ag_ptfe_pm"
        } -> null
    }

Plan: 0 to add, 0 to change, 30 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

module.db_aws.null_resource.timed-pw-out: Destroying... [id=5600194423524203756]
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap: Destroying... [id=7082153628618354030]
module.sslcert_letsencrypt.local_file.ssl_cert_file: Destroying... [id=ccf44ba782244b6b87383a346b2af587d106db6b]
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Destroying... [id=f9da0c5239e896b740c721fff7ac35e2e1fdd885]
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Destroying... [id=8fd075727eb6abdf50f26eb18597f7333356b33c]
module.db_aws.null_resource.timed-pw-out: Destruction complete after 0s
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap: Destruction complete after 0s
module.sslcert_letsencrypt.local_file.ssl_cert_file: Destruction complete after 0s
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Destruction complete after 0s
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Destruction complete after 0s
module.dns_cloudflare.cloudflare_record.site_backend: Destroying... [id=880e1114db44e9bbdf366504eeb90269]
module.dns_cloudflare.cloudflare_record.site_lb: Destroying... [id=d58d02c255a52014972e758880a2e45c]
module.sslcert_letsencrypt.acme_certificate.certificate: Destroying... [id=https://acme-v02.api.letsencrypt.org/acme/cert/030ec7d1c6d63cbdbca223799026b50f1bdf]
module.dns_cloudflare.cloudflare_record.site_lb: Destruction complete after 0s
module.dns_cloudflare.cloudflare_record.site_backend: Destruction complete after 0s
module.sslcert_letsencrypt.acme_certificate.certificate: Destruction complete after 1s
module.sslcert_letsencrypt.acme_registration.reg: Destroying... [id=https://acme-v02.api.letsencrypt.org/acme/acct/71555856]
module.vpc_aws.aws_route_table_association.ag_tfe_association: Destroying... [id=rtbassoc-0b77c1537e059217a]
module.vpc_aws.aws_route.ag_tfe_internet_access: Destroying... [id=r-rtb-038a9d93712b49ad91080289494]
module.lb_aws.aws_elb.ptfe_lb: Destroying... [id=ag-clb-ag-clb-tfe-pm-ext-1]
module.db_aws.aws_db_instance.tfe_db: Destroying... [id=terraform-20191112145444196200000001]
module.objectstorage_aws.aws_s3_bucket.tfebucket: Destroying... [id=tfe-pm-ext-1-f33fa67bcc5d4217]
module.vpc_aws.aws_route_table_association.ag_tfe_association: Destruction complete after 1s
module.vpc_aws.aws_route.ag_tfe_internet_access: Destruction complete after 1s
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Destroying... [id=igw-097b30d13e0739167]
module.vpc_aws.aws_route_table.ag_tfe_route_table: Destroying... [id=rtb-038a9d93712b49ad9]
module.objectstorage_aws.aws_s3_bucket.tfebucket: Destruction complete after 1s
module.objectstorage_aws.random_id.bucket: Destroying... [id=8z-me8xdQhc]
module.objectstorage_aws.random_id.bucket: Destruction complete after 0s
module.lb_aws.aws_elb.ptfe_lb: Destruction complete after 1s
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb: Destroying... [id=sg-02f90cbef2cd06b47]
module.compute_aws.aws_instance.ptfe: Destroying... [id=i-02aa09e8e2a6dbba1]
module.vpc_aws.aws_route_table.ag_tfe_route_table: Destruction complete after 0s
module.sslcert_letsencrypt.acme_registration.reg: Destruction complete after 3s
module.sslcert_letsencrypt.tls_private_key.private_key: Destroying... [id=cc43dc114d59199efe7f6a9751c572bb59b25f48]
module.sslcert_letsencrypt.tls_private_key.private_key: Destruction complete after 0s
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 10s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 10s elapsed]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb: Still destroying... [id=sg-02f90cbef2cd06b47, 10s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 10s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 20s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 20s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 20s elapsed]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb: Still destroying... [id=sg-02f90cbef2cd06b47, 20s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 30s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 30s elapsed]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb: Still destroying... [id=sg-02f90cbef2cd06b47, 30s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 30s elapsed]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb: Destruction complete after 38s
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 40s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 40s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 40s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 50s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 50s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 50s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 1m0s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 1m0s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 1m0s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 1m10s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 1m10s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 1m10s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 1m20s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 1m20s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 1m20s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 1m30s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 1m30s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 1m30s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 1m40s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 1m40s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 1m40s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 1m51s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 1m50s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 1m50s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 2m1s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 2m0s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 2m0s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 2m11s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 2m10s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 2m10s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 2m21s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 2m20s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 2m20s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 2m31s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 2m30s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 2m30s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 2m41s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 2m40s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 2m40s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 2m51s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Still destroying... [id=igw-097b30d13e0739167, 2m50s elapsed]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Destruction complete after 2m50s
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 2m50s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 3m1s elapsed]
module.compute_aws.aws_instance.ptfe: Still destroying... [id=i-02aa09e8e2a6dbba1, 3m0s elapsed]
module.compute_aws.aws_instance.ptfe: Destruction complete after 3m3s
module.sshkey_aws.aws_key_pair.sshkey: Destroying... [id=tfe-pm-ext-1]
module.vpc_aws.aws_subnet.ag_tfe_Subnet: Destroying... [id=subnet-0dd3ad87ba7c219bd]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group: Destroying... [id=sg-06197fa14e8406227]
module.sshkey_aws.aws_key_pair.sshkey: Destruction complete after 0s
module.vpc_aws.aws_security_group.ag_tfe_Security_Group: Destruction complete after 0s
module.vpc_aws.aws_subnet.ag_tfe_Subnet: Destruction complete after 0s
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 3m11s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 3m21s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 3m31s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still destroying... [id=terraform-20191112145444196200000001, 3m41s elapsed]
module.db_aws.aws_db_instance.tfe_db: Destruction complete after 3m46s
module.db_aws.aws_db_subnet_group.tfe: Destroying... [id=agtfepmext1-rds-subnet-group]
module.db_aws.random_password.password: Destroying... [id=none]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_db: Destroying... [id=sg-097b56048d7f8d94e]
module.db_aws.random_password.password: Destruction complete after 0s
module.db_aws.aws_db_subnet_group.tfe: Destruction complete after 0s
module.vpc_aws.aws_subnet.rds[0]: Destroying... [id=subnet-0dc5928696f84bc35]
module.vpc_aws.aws_subnet.rds[1]: Destroying... [id=subnet-0bd70393030b8e7a6]
module.vpc_aws.aws_subnet.rds[2]: Destroying... [id=subnet-00b68673dbcbd26d5]
module.vpc_aws.aws_subnet.rds[2]: Destruction complete after 0s
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_db: Destruction complete after 0s
module.vpc_aws.aws_subnet.rds[1]: Destruction complete after 0s
module.vpc_aws.aws_subnet.rds[0]: Destruction complete after 0s
module.vpc_aws.aws_vpc.ag_tfe: Destroying... [id=vpc-007cb9a6bac9e2056]
module.vpc_aws.aws_vpc.ag_tfe: Destruction complete after 0s

Destroy complete! Resources: 30 destroyed.
```
