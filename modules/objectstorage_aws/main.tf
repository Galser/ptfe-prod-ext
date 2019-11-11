
resource "random_id" "bucket" {
  keepers = {
    # Generate a new id each time we 
    # switch name of the site
    ami_id = "${var.name}"
  }

  byte_length = 8
}

resource "aws_s3_bucket" "tfebucket" {
  bucket = "${var.name}-${random_id.bucket.hex}"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }
  }

  tags = {
    Name        = "${var.name}",
    "andriitag" = "true"
  }
}

