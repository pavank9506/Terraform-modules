resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = var.acl
  tags   = var.tags

  versioning {
    enabled = var.versioning_enabled
  }
}


