# Full run log of infra creation (terraform apply)

```bash
 ~/.../ptfe-prod-ext (f-test-instructions ) ●  terraform apply
module.dns_cloudflare.data.cloudflare_zones.site_zone: Refreshing state...
module.vpc_aws.data.aws_availability_zones.available: Refreshing state...

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap will be created
  + resource "null_resource" "pg-rds-bootstrap" {
      + id       = (known after apply)
      + triggers = (known after apply)
    }

  # module.compute_aws.aws_instance.ptfe will be created
  + resource "aws_instance" "ptfe" {
      + ami                          = "ami-08a162fe1419adb2a"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "m5.large"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + network_interface_id         = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tags                         = {
          + "Name"      = "ag-tfe-pm-ext-1-andrii"
          + "andriitag" = "true"
        }
      + tenancy                      = (known after apply)
      + volume_tags                  = {
          + "Name"      = "ag-tfe-pm-ext-1-andrii"
          + "andriitag" = "true"
        }
      + vpc_security_group_ids       = (known after apply)

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = true
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = 50
          + volume_type           = (known after apply)
        }
    }

  # module.db_aws.aws_db_instance.tfe_db will be created
  + resource "aws_db_instance" "tfe_db" {
      + address                               = (known after apply)
      + allocated_storage                     = 50
      + apply_immediately                     = (known after apply)
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_subnet_group_name                  = (known after apply)
      + endpoint                              = (known after apply)
      + engine                                = "postgres"
      + engine_version                        = "9.6.15"
      + final_snapshot_identifier             = "agtfepmext1-final-snap"
      + hosted_zone_id                        = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = (known after apply)
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.m4.large"
      + kms_key_id                            = (known after apply)
      + license_model                         = (known after apply)
      + maintenance_window                    = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = (known after apply)
      + name                                  = "agtfepmext1"
      + option_group_name                     = (known after apply)
      + parameter_group_name                  = (known after apply)
      + password                              = (sensitive value)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + publicly_accessible                   = false
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = true
      + status                                = (known after apply)
      + storage_type                          = "gp2"
      + tags                                  = {
          + "Name"      = "ag-tfe-pm-ext-1"
          + "andriitag" = "true"
        }
      + timezone                              = (known after apply)
      + username                              = "adimini"
      + vpc_security_group_ids                = (known after apply)
    }

  # module.db_aws.aws_db_subnet_group.tfe will be created
  + resource "aws_db_subnet_group" "tfe" {
      + arn         = (known after apply)
      + description = "Terraform RDS subnet group"
      + id          = (known after apply)
      + name        = "agtfepmext1-rds-subnet-group"
      + name_prefix = (known after apply)
      + subnet_ids  = (known after apply)
      + tags        = {
          + "Name"      = "ag-tfe-pm-ext-1"
          + "andriitag" = "true"
        }
    }

  # module.db_aws.null_resource.timed-pw-out will be created
  + resource "null_resource" "timed-pw-out" {
      + id       = (known after apply)
      + triggers = (known after apply)
    }

  # module.db_aws.random_password.password will be created
  + resource "random_password" "password" {
      + id               = (known after apply)
      + length           = 16
      + lower            = true
      + min_lower        = 0
      + min_numeric      = 0
      + min_special      = 0
      + min_upper        = 0
      + number           = true
      + override_special = "_-"
      + result           = (sensitive value)
      + special          = true
      + upper            = true
    }

  # module.dns_cloudflare.cloudflare_record.site_backend will be created
  + resource "cloudflare_record" "site_backend" {
      + created_on  = (known after apply)
      + hostname    = (known after apply)
      + id          = (known after apply)
      + metadata    = (known after apply)
      + modified_on = (known after apply)
      + name        = "tfe-pm-ext-1_backend"
      + proxiable   = (known after apply)
      + proxied     = false
      + ttl         = 600
      + type        = "A"
      + value       = (known after apply)
      + zone_id     = "2032750a75777e59b3bf6c73333ee2b0"
    }

  # module.dns_cloudflare.cloudflare_record.site_lb will be created
  + resource "cloudflare_record" "site_lb" {
      + created_on  = (known after apply)
      + hostname    = (known after apply)
      + id          = (known after apply)
      + metadata    = (known after apply)
      + modified_on = (known after apply)
      + name        = "tfe-pm-ext-1"
      + proxiable   = (known after apply)
      + proxied     = false
      + ttl         = 600
      + type        = "CNAME"
      + value       = (known after apply)
      + zone_id     = "2032750a75777e59b3bf6c73333ee2b0"
    }

  # module.lb_aws.aws_elb.ptfe_lb will be created
  + resource "aws_elb" "ptfe_lb" {
      + arn                         = (known after apply)
      + availability_zones          = (known after apply)
      + connection_draining         = true
      + connection_draining_timeout = 400
      + cross_zone_load_balancing   = true
      + dns_name                    = (known after apply)
      + id                          = (known after apply)
      + idle_timeout                = 400
      + instances                   = (known after apply)
      + internal                    = (known after apply)
      + name                        = "ag-clb-ag-clb-tfe-pm-ext-1"
      + security_groups             = (known after apply)
      + source_security_group       = (known after apply)
      + source_security_group_id    = (known after apply)
      + subnets                     = (known after apply)
      + tags                        = {
          + "Name"      = "ag-clb-tfe-pm-ext-1"
          + "andriitag" = "true"
        }
      + zone_id                     = (known after apply)

      + health_check {
          + healthy_threshold   = 3
          + interval            = 30
          + target              = "TCP:8800"
          + timeout             = 10
          + unhealthy_threshold = 10
        }

      + listener {
          + instance_port     = 443
          + instance_protocol = "tcp"
          + lb_port           = 443
          + lb_protocol       = "tcp"
        }
      + listener {
          + instance_port     = 8800
          + instance_protocol = "tcp"
          + lb_port           = 8800
          + lb_protocol       = "tcp"
        }
    }

  # module.objectstorage_aws.aws_s3_bucket.tfebucket will be created
  + resource "aws_s3_bucket" "tfebucket" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = (known after apply)
      + bucket_domain_name          = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name"      = "tfe-pm-ext-1"
          + "andriitag" = "true"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + lifecycle_rule {
          + enabled = true
          + id      = (known after apply)

          + transition {
              + days          = 30
              + storage_class = "STANDARD_IA"
            }
          + transition {
              + days          = 60
              + storage_class = "GLACIER"
            }
        }

      + versioning {
          + enabled    = true
          + mfa_delete = false
        }
    }

  # module.objectstorage_aws.random_id.bucket will be created
  + resource "random_id" "bucket" {
      + b64         = (known after apply)
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 8
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
      + keepers     = {
          + "ami_id" = "tfe-pm-ext-1"
        }
    }

  # module.sshkey_aws.aws_key_pair.sshkey will be created
  + resource "aws_key_pair" "sshkey" {
      + fingerprint = (known after apply)
      + id          = (known after apply)
      + key_name    = "tfe-pm-ext-1"
      + public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC704xhVAxg9Bhq0jIbABWVjKl2DW7apvfFj3UtvActT9a9w1Xt5Fa2jEFuzMXceFtpDjgq5j8E8vsrICu8Wpeqwuo2SR2aAjEjBDfJzOM3kmF9wuWdpacDhVm1luPJiqqM4wLAPufht5vhdlqD8QtW/q84MMHbbkXNjdvgqsIcvDWcCRLQDa1Du3ElF9V+/n182ihIDfQCUtQS0zc9lIcUemZMSLRhxAWA9BZYCu8wnUuLBE/fv8apC0NxOayklSBEj7Pk/HxJnYxTeskqGs5MkzHydObPZSnAtX4Hfe1KlmsAVwt6Sj2bG2AYpt9G0jF7Oq9sYQ6nBTMAxENIsmhB andrii@guselietovs-mbp.home"
    }

  # module.sslcert_letsencrypt.acme_certificate.certificate will be created
  + resource "acme_certificate" "certificate" {
      + account_key_pem    = (sensitive value)
      + certificate_domain = (known after apply)
      + certificate_p12    = (sensitive value)
      + certificate_pem    = (known after apply)
      + certificate_url    = (known after apply)
      + common_name        = "tfe-pm-ext-1.guselietov.com"
      + id                 = (known after apply)
      + issuer_pem         = (known after apply)
      + key_type           = "2048"
      + min_days_remaining = 30
      + must_staple        = false
      + private_key_pem    = (sensitive value)

      + dns_challenge {
          + provider = "cloudflare"
        }
    }

  # module.sslcert_letsencrypt.acme_registration.reg will be created
  + resource "acme_registration" "reg" {
      + account_key_pem  = (sensitive value)
      + email_address    = "andrii@guselietov.com"
      + id               = (known after apply)
      + registration_url = (known after apply)
    }

  # module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file will be created
  + resource "local_file" "ssl_cert_bundle_file" {
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "./site_ssl_cert_bundle.pem"
      + id                   = (known after apply)
      + sensitive_content    = (sensitive value)
    }

  # module.sslcert_letsencrypt.local_file.ssl_cert_file will be created
  + resource "local_file" "ssl_cert_file" {
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "./site_ssl_cert.pem"
      + id                   = (known after apply)
      + sensitive_content    = (sensitive value)
    }

  # module.sslcert_letsencrypt.local_file.ssl_private_key_file will be created
  + resource "local_file" "ssl_private_key_file" {
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "./site_ssl_private_key.pem"
      + id                   = (known after apply)
      + sensitive_content    = (sensitive value)
    }

  # module.sslcert_letsencrypt.tls_private_key.private_key will be created
  + resource "tls_private_key" "private_key" {
      + algorithm                  = "RSA"
      + ecdsa_curve                = "P224"
      + id                         = (known after apply)
      + private_key_pem            = (sensitive value)
      + public_key_fingerprint_md5 = (known after apply)
      + public_key_openssh         = (known after apply)
      + public_key_pem             = (known after apply)
      + rsa_bits                   = 2048
    }

  # module.vpc_aws.aws_internet_gateway.ag_tfe_GW will be created
  + resource "aws_internet_gateway" "ag_tfe_GW" {
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "ag_ptfe_pm_internet_gateway"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc_aws.aws_route.ag_tfe_internet_access will be created
  + resource "aws_route" "ag_tfe_internet_access" {
      + destination_cidr_block     = "0.0.0.0/0"
      + destination_prefix_list_id = (known after apply)
      + egress_only_gateway_id     = (known after apply)
      + gateway_id                 = (known after apply)
      + id                         = (known after apply)
      + instance_id                = (known after apply)
      + instance_owner_id          = (known after apply)
      + nat_gateway_id             = (known after apply)
      + network_interface_id       = (known after apply)
      + origin                     = (known after apply)
      + route_table_id             = (known after apply)
      + state                      = (known after apply)
    }

  # module.vpc_aws.aws_route_table.ag_tfe_route_table will be created
  + resource "aws_route_table" "ag_tfe_route_table" {
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "ag_ptfe_pm_route_table"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc_aws.aws_route_table_association.ag_tfe_association will be created
  + resource "aws_route_table_association" "ag_tfe_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc_aws.aws_security_group.ag_tfe_Security_Group will be created
  + resource "aws_security_group" "ag_tfe_Security_Group" {
      + arn                    = (known after apply)
      + description            = "ag_ptfe_pm Security Group"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 1024
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 65535
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 8800
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 8800
            },
        ]
      + name                   = "ag_ptfe_pm Security Group"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "ag_ptfe_pm_security_group"
        }
      + vpc_id                 = (known after apply)
    }

  # module.vpc_aws.aws_security_group.ag_tfe_Security_Group_db will be created
  + resource "aws_security_group" "ag_tfe_Security_Group_db" {
      + arn                    = (known after apply)
      + description            = "ag_ptfe_pm-sg-db"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 5432
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 5432
            },
        ]
      + name                   = "ag_ptfe_pm-sg-db"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "ag_ptfe_pm_security_group"
        }
      + vpc_id                 = (known after apply)
    }

  # module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb will be created
  + resource "aws_security_group" "ag_tfe_Security_Group_elb" {
      + arn                    = (known after apply)
      + description            = "ag_ptfe_pm ELB Security Group"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 8800
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 8800
            },
        ]
      + name                   = "ag_ptfe_pm-sg-elb"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + vpc_id                 = (known after apply)
    }

  # module.vpc_aws.aws_subnet.ag_tfe_Subnet will be created
  + resource "aws_subnet" "ag_tfe_Subnet" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-central-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.1.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name" = "ag_ptfe_pm_subnet"
        }
      + vpc_id                          = (known after apply)
    }

  # module.vpc_aws.aws_subnet.rds[0] will be created
  + resource "aws_subnet" "rds" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-central-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.3.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # module.vpc_aws.aws_subnet.rds[1] will be created
  + resource "aws_subnet" "rds" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-central-1b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.4.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # module.vpc_aws.aws_subnet.rds[2] will be created
  + resource "aws_subnet" "rds" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-central-1c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.5.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # module.vpc_aws.aws_vpc.ag_tfe will be created
  + resource "aws_vpc" "ag_tfe" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "10.0.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = true
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = {
          + "Name" = "ag_ptfe_pm"
        }
    }

Plan: 30 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.db_aws.random_password.password: Creating...
module.objectstorage_aws.random_id.bucket: Creating...
module.db_aws.random_password.password: Creation complete after 0s [id=none]
module.objectstorage_aws.random_id.bucket: Creation complete after 0s [id=RcHcBZNkZeU]
module.sslcert_letsencrypt.tls_private_key.private_key: Creating...
module.db_aws.null_resource.timed-pw-out: Creating...
module.db_aws.null_resource.timed-pw-out: Provisioning with 'local-exec'...
module.db_aws.null_resource.timed-pw-out (local-exec): Executing: ["/bin/sh" "-c" "echo DB creds user ag-tfe-pm-ext-1, pw lYO6ZNoLX0-QX5rZ"]
module.db_aws.null_resource.timed-pw-out (local-exec): DB creds user ag-tfe-pm-ext-1, pw lYO6ZNoLX0-QX5rZ
module.db_aws.null_resource.timed-pw-out: Creation complete after 0s [id=5353996803760092320]
module.sslcert_letsencrypt.tls_private_key.private_key: Creation complete after 1s [id=bf0b0f51fd7295ae7fc839aada95aa13f1f6aed7]
module.sslcert_letsencrypt.acme_registration.reg: Creating...
module.sshkey_aws.aws_key_pair.sshkey: Creating...
module.vpc_aws.aws_vpc.ag_tfe: Creating...
module.objectstorage_aws.aws_s3_bucket.tfebucket: Creating...
module.sshkey_aws.aws_key_pair.sshkey: Creation complete after 0s [id=tfe-pm-ext-1]
module.sslcert_letsencrypt.acme_registration.reg: Creation complete after 2s [id=https://acme-v02.api.letsencrypt.org/acme/acct/71694674]
module.sslcert_letsencrypt.acme_certificate.certificate: Creating...
module.vpc_aws.aws_vpc.ag_tfe: Creation complete after 2s [id=vpc-023d681bbad2abb3a]
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Creating...
module.vpc_aws.aws_route_table.ag_tfe_route_table: Creating...
module.vpc_aws.aws_subnet.rds[1]: Creating...
module.vpc_aws.aws_subnet.rds[2]: Creating...
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_db: Creating...
module.vpc_aws.aws_subnet.ag_tfe_Subnet: Creating...
module.vpc_aws.aws_subnet.rds[0]: Creating...
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb: Creating...
module.vpc_aws.aws_route_table.ag_tfe_route_table: Creation complete after 1s [id=rtb-0fcc58b7425c0012e]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group: Creating...
module.vpc_aws.aws_subnet.rds[0]: Creation complete after 1s [id=subnet-09690c0c9dda52d81]
module.vpc_aws.aws_subnet.rds[1]: Creation complete after 1s [id=subnet-0c141cc61fbda32c0]
module.vpc_aws.aws_subnet.rds[2]: Creation complete after 1s [id=subnet-0b5a0465ab35fef1f]
module.db_aws.aws_db_subnet_group.tfe: Creating...
module.vpc_aws.aws_internet_gateway.ag_tfe_GW: Creation complete after 1s [id=igw-0548778003705c122]
module.vpc_aws.aws_route.ag_tfe_internet_access: Creating...
module.vpc_aws.aws_subnet.ag_tfe_Subnet: Creation complete after 1s [id=subnet-032a2e53aba2ca35a]
module.vpc_aws.aws_route_table_association.ag_tfe_association: Creating...
module.vpc_aws.aws_route.ag_tfe_internet_access: Creation complete after 0s [id=r-rtb-0fcc58b7425c0012e1080289494]
module.vpc_aws.aws_route_table_association.ag_tfe_association: Creation complete after 0s [id=rtbassoc-0fc719f71318861b9]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_elb: Creation complete after 2s [id=sg-075c2216dbafd96ee]
module.vpc_aws.aws_security_group.ag_tfe_Security_Group_db: Creation complete after 2s [id=sg-03fe26a5a7e2f25b9]
module.objectstorage_aws.aws_s3_bucket.tfebucket: Creation complete after 4s [id=tfe-pm-ext-1-45c1dc05936465e5]
module.db_aws.aws_db_subnet_group.tfe: Creation complete after 1s [id=agtfepmext1-rds-subnet-group]
module.db_aws.aws_db_instance.tfe_db: Creating...
module.vpc_aws.aws_security_group.ag_tfe_Security_Group: Creation complete after 1s [id=sg-02f094be00aadb9f1]
module.compute_aws.aws_instance.ptfe: Creating...
module.sslcert_letsencrypt.acme_certificate.certificate: Still creating... [10s elapsed]
module.sslcert_letsencrypt.acme_certificate.certificate: Creation complete after 11s [id=https://acme-v02.api.letsencrypt.org/acme/cert/04bfb03240bf1c068efd6fad0251b416aca9]
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Creating...
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Creating...
module.sslcert_letsencrypt.local_file.ssl_cert_file: Creating...
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Creation complete after 0s [id=b7a0dc68430fbb5276cdd425d4cd9433bbe54ffe]
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Creation complete after 0s [id=81df6d322f77bd5abc11cc28e54cabf241e24a6e]
module.sslcert_letsencrypt.local_file.ssl_cert_file: Creation complete after 0s [id=6ab429617aa9ee82990c41d63598c58a8b2476fd]
module.db_aws.aws_db_instance.tfe_db: Still creating... [10s elapsed]
module.compute_aws.aws_instance.ptfe: Still creating... [10s elapsed]
module.compute_aws.aws_instance.ptfe: Provisioning with 'remote-exec'...
module.compute_aws.aws_instance.ptfe (remote-exec): Connecting to remote host via SSH...
module.compute_aws.aws_instance.ptfe (remote-exec):   Host: 18.185.105.43
module.compute_aws.aws_instance.ptfe (remote-exec):   User: ubuntu
module.compute_aws.aws_instance.ptfe (remote-exec):   Password: false
module.compute_aws.aws_instance.ptfe (remote-exec):   Private key: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Certificate: false
module.compute_aws.aws_instance.ptfe (remote-exec):   SSH Agent: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Checking Host Key: false
module.db_aws.aws_db_instance.tfe_db: Still creating... [20s elapsed]
module.compute_aws.aws_instance.ptfe: Still creating... [20s elapsed]
module.compute_aws.aws_instance.ptfe (remote-exec): Connecting to remote host via SSH...
module.compute_aws.aws_instance.ptfe (remote-exec):   Host: 18.185.105.43
module.compute_aws.aws_instance.ptfe (remote-exec):   User: ubuntu
module.compute_aws.aws_instance.ptfe (remote-exec):   Password: false
module.compute_aws.aws_instance.ptfe (remote-exec):   Private key: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Certificate: false
module.compute_aws.aws_instance.ptfe (remote-exec):   SSH Agent: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Checking Host Key: false
module.db_aws.aws_db_instance.tfe_db: Still creating... [30s elapsed]
module.compute_aws.aws_instance.ptfe: Still creating... [30s elapsed]
module.compute_aws.aws_instance.ptfe (remote-exec): Connecting to remote host via SSH...
module.compute_aws.aws_instance.ptfe (remote-exec):   Host: 18.185.105.43
module.compute_aws.aws_instance.ptfe (remote-exec):   User: ubuntu
module.compute_aws.aws_instance.ptfe (remote-exec):   Password: false
module.compute_aws.aws_instance.ptfe (remote-exec):   Private key: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Certificate: false
module.compute_aws.aws_instance.ptfe (remote-exec):   SSH Agent: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Checking Host Key: false
module.compute_aws.aws_instance.ptfe (remote-exec): Connecting to remote host via SSH...
module.compute_aws.aws_instance.ptfe (remote-exec):   Host: 18.185.105.43
module.compute_aws.aws_instance.ptfe (remote-exec):   User: ubuntu
module.compute_aws.aws_instance.ptfe (remote-exec):   Password: false
module.compute_aws.aws_instance.ptfe (remote-exec):   Private key: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Certificate: false
module.compute_aws.aws_instance.ptfe (remote-exec):   SSH Agent: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Checking Host Key: false
module.db_aws.aws_db_instance.tfe_db: Still creating... [40s elapsed]
module.compute_aws.aws_instance.ptfe: Still creating... [40s elapsed]
module.compute_aws.aws_instance.ptfe (remote-exec): Connecting to remote host via SSH...
module.compute_aws.aws_instance.ptfe (remote-exec):   Host: 18.185.105.43
module.compute_aws.aws_instance.ptfe (remote-exec):   User: ubuntu
module.compute_aws.aws_instance.ptfe (remote-exec):   Password: false
module.compute_aws.aws_instance.ptfe (remote-exec):   Private key: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Certificate: false
module.compute_aws.aws_instance.ptfe (remote-exec):   SSH Agent: true
module.compute_aws.aws_instance.ptfe (remote-exec):   Checking Host Key: false
module.compute_aws.aws_instance.ptfe (remote-exec): Connected!
module.compute_aws.aws_instance.ptfe (remote-exec): Hit:1 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic InRelease
module.compute_aws.aws_instance.ptfe (remote-exec): Get:2 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates InRelease [88.7 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:3 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-backports InRelease [74.6 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:4 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/universe amd64 Packages [8570 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:5 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:6 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/universe Translation-en [4941 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:7 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/multiverse amd64 Packages [151 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:8 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/multiverse Translation-en [108 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:9 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 Packages [788 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:10 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main Translation-en [280 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:11 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/restricted amd64 Packages [21.6 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:12 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/restricted Translation-en [6068 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:13 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/universe amd64 Packages [1024 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:14 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/universe Translation-en [315 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:15 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/multiverse amd64 Packages [8308 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:16 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/multiverse Translation-en [4012 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:17 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-backports/main amd64 Packages [2512 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:18 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-backports/main Translation-en [1644 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:19 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-backports/universe amd64 Packages [4024 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:20 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-backports/universe Translation-en [1856 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:21 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [565 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:22 http://security.ubuntu.com/ubuntu bionic-security/main Translation-en [186 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:23 http://security.ubuntu.com/ubuntu bionic-security/restricted amd64 Packages [12.9 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:24 http://security.ubuntu.com/ubuntu bionic-security/restricted Translation-en [4232 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:25 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 Packages [618 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:26 http://security.ubuntu.com/ubuntu bionic-security/universe Translation-en [206 kB]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:27 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [5692 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Get:28 http://security.ubuntu.com/ubuntu bionic-security/multiverse Translation-en [2532 B]
module.compute_aws.aws_instance.ptfe (remote-exec): Fetched 18.1 MB in 4s (4595 kB/s)
module.db_aws.aws_db_instance.tfe_db: Still creating... [50s elapsed]
module.compute_aws.aws_instance.ptfe: Still creating... [50s elapsed]
module.compute_aws.aws_instance.ptfe (remote-exec): Reading package lists...

module.compute_aws.aws_instance.ptfe (remote-exec): Building dependency tree...

module.compute_aws.aws_instance.ptfe (remote-exec): Reading state information...
module.compute_aws.aws_instance.ptfe (remote-exec): 53 packages can be upgraded. Run 'apt list --upgradable' to see them.
module.compute_aws.aws_instance.ptfe (remote-exec): /usr/bin/curl
module.compute_aws.aws_instance.ptfe: Provisioning with 'file'...
module.compute_aws.aws_instance.ptfe: Provisioning with 'file'...
module.compute_aws.aws_instance.ptfe: Creation complete after 52s [id=i-01aafe75471a5e462]
module.dns_cloudflare.cloudflare_record.site_backend: Creating...
module.lb_aws.aws_elb.ptfe_lb: Creating...
module.dns_cloudflare.cloudflare_record.site_backend: Creation complete after 1s [id=da6f4b9dd01600d3cb6a628fa58410be]
module.lb_aws.aws_elb.ptfe_lb: Creation complete after 4s [id=ag-clb-ag-clb-tfe-pm-ext-1]
module.dns_cloudflare.cloudflare_record.site_lb: Creating...
module.dns_cloudflare.cloudflare_record.site_lb: Creation complete after 0s [id=08bbb8919e01d6272961dc6e4d493faa]
module.db_aws.aws_db_instance.tfe_db: Still creating... [1m0s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [1m10s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [1m20s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [1m30s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [1m40s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [1m50s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [2m0s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [2m10s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [2m20s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [2m30s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [2m40s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [2m50s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [3m0s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [3m10s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [3m20s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [3m30s elapsed]
module.db_aws.aws_db_instance.tfe_db: Still creating... [3m40s elapsed]
module.db_aws.aws_db_instance.tfe_db: Creation complete after 3m46s [id=terraform-20191113133219046400000002]
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap: Creating...
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap: Provisioning with 'file'...
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap: Provisioning with 'remote-exec'...
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Connecting to remote host via SSH...
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Host: 18.185.105.43
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   User: ubuntu
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Password: false
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Private key: true
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Certificate: false
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   SSH Agent: true
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Checking Host Key: false
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Connected!
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Hit:1 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic InRelease
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Hit:2 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates InRelease
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Hit:3 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-backports InRelease
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Hit:4 http://security.ubuntu.com/ubuntu bionic-security InRelease
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Reading package lists...

module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Building dependency tree...

module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Reading state information...
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): 53 packages can be upgraded. Run 'apt list --upgradable' to see them.
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): The following additional packages will be installed:
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   libpq5 postgresql-client-10
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   postgresql-client-common
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Suggested packages:
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   postgresql-10 postgresql-doc-10
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): The following NEW packages will be installed:
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   libpq5 postgresql-client
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   postgresql-client-10
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   postgresql-client-common
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): 0 upgraded, 4 newly installed, 0 to remove and 53 not upgraded.
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Need to get 1078 kB of archives.
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): After this operation, 3825 kB of additional disk space will be used.
                                                                          Selecting previously unselected package libpq5:amd64._resource.pg-rds-bootstrap (remote-exec):
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ...
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 5%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 10%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 15%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 20%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 25%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 30%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 35%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 40%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 45%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 50%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 55%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 60%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 65%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 70%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 75%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 80%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 85%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 90%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 95%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 100%
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): (Reading database ... 56534 files and directories currently installed.)
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Preparing to unpack .../libpq5_10.10-0ubuntu0.18.04.1_amd64.deb ...
Progress: [  5%] [..................] rce.pg-rds-bootstrap (remote-exec): Unpacking libpq5:amd64 (10.10-0ubuntu0.18.04.1) ...
Progress: [ 14%] [##................] rce.pg-rds-bootstrap (remote-exec): Selecting previously unselected package postgresql-client-common.
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Preparing to unpack .../postgresql-client-common_190_all.deb ...
Progress: [ 19%] [###...............] rce.pg-rds-bootstrap (remote-exec): Unpacking postgresql-client-common (190) ...
Progress: [ 29%] [#####.............] rce.pg-rds-bootstrap (remote-exec): Selecting previously unselected package postgresql-client-10.
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Preparing to unpack .../postgresql-client-10_10.10-0ubuntu0.18.04.1_amd64.deb ...
Progress: [ 33%] [#####.............] rce.pg-rds-bootstrap (remote-exec): Unpacking postgresql-client-10 (10.10-0ubuntu0.18.04.1) ...
Progress: [ 43%] [#######...........] rce.pg-rds-bootstrap (remote-exec): Selecting previously unselected package postgresql-client.
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Preparing to unpack .../postgresql-client_10+190_all.deb ...
Progress: [ 48%] [########..........] rce.pg-rds-bootstrap (remote-exec): Unpacking postgresql-client (10+190) ...
Progress: [ 57%] [##########........] rce.pg-rds-bootstrap (remote-exec): Setting up libpq5:amd64 (10.10-0ubuntu0.18.04.1) ...
Progress: [ 67%] [###########.......] rce.pg-rds-bootstrap (remote-exec): Setting up postgresql-client-common (190) ...
Progress: [ 76%] [#############.....] rce.pg-rds-bootstrap (remote-exec): Setting up postgresql-client-10 (10.10-0ubuntu0.18.04.1) ...
Progress: [ 81%] [##############....] rce.pg-rds-bootstrap (remote-exec):
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): update-alternatives: using /usr/share/postgresql/10/man/man1/psql.1.gz to provide /usr/share/man/man1/psql.1.gz (psql.1.gz) in auto mode
Progress: [ 86%] [###############...] rce.pg-rds-bootstrap (remote-exec): Setting up postgresql-client (10+190) ...
Progress: [ 95%] [#################.] rce.pg-rds-bootstrap (remote-exec): Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Processing triggers for libc-bin (2.27-3ubuntu1) ...

module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap: Provisioning with 'remote-exec'...
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Connecting to remote host via SSH...
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Host: 18.185.105.43
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   User: ubuntu
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Password: false
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Private key: true
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Certificate: false
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   SSH Agent: true
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec):   Checking Host Key: false
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): Connected!
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE SCHEMA rails;
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE SCHEMA
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE SCHEMA vault;
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE SCHEMA
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE SCHEMA registry;
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE SCHEMA
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE EXTENSION IF NOT EXISTS "hstore" WITH SCHEMA "rails";
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE EXTENSION
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "rails";
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE EXTENSION
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE EXTENSION IF NOT EXISTS "citext" WITH SCHEMA "registry";
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap (remote-exec): CREATE EXTENSION
module.bootstrap_pg_rds_aws.null_resource.pg-rds-bootstrap: Creation complete after 10s [id=6886361605590033259]

Apply complete! Resources: 30 added, 0 changed, 0 destroyed.

Outputs:

backend_fqdn = tfe-pm-ext-1_backend.guselietov.com
cert_url = https://acme-v02.api.letsencrypt.org/acme/cert/04bfb03240bf1c068efd6fad0251b416aca9
db_endpoint = terraform-20191113133219046400000002.cfzxhhyh79j5.eu-central-1.rds.amazonaws.com:5432
db_name = agtfepmext1
db_password = lYO6ZNoLX0-QX5rZ
db_user = adimini
full_site_name = tfe-pm-ext-1.guselietov.com
loadbalancer_fqdn = ag-clb-ag-clb-tfe-pm-ext-1-989680091.eu-central-1.elb.amazonaws.com
object_storage_id = tfe-pm-ext-1-45c1dc05936465e5
public_ip = 18.185.105.43
region = eu-central-1
```