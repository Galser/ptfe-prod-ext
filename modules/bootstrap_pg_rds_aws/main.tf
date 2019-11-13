resource "null_resource" "pg-rds-bootstrap" {
  triggers = {
    rds = var.rds_id
  }

  connection {
    user = "ubuntu"
    type = "ssh"
    #     private_key = "${file("~/.ssh/id_rsa")}"
    private_key = "${file("${var.key_path}")}"
    host        = var.tfe_instance_ip
  }

  provisioner "file" {
    source      = "${path.module}/scripts/init_pg.sql"
    destination = "/tmp/init_pg.sql"
  }

  provisioner "remote-exec" {
    script = "${path.module}/scripts/install-psql.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "PGPASSWORD=${var.dbpassword} psql -h ${var.dbbhost} ${var.dbbase} ${var.dbuser} -a -f /tmp/init_pg.sql",
    ]
  }

}