# Terraform AWS S3 Module (Customised)

This module provisions an AWS S3 bucket with configurable options for versioning, ACL, and tags.

## Resources Created
* AWS S3 Bucket
* (Optional) Bucket versioning
* (Optional) Tags for the bucket

## Inputs
* bucket_name (Mandatory): The name of the S3 bucket.
* versioning_enabled (Optional): Enable versioning for the bucket. Default is false.
* acl (Optional): The canned ACL to apply. Default is "private". Common values: "private", "public-read", "public-read-write", etc.
* tags (Optional): Map of tags to assign to the bucket. Default is empty.

## Outputs
* bucket_id: The name of the bucket.
* bucket_arn: The ARN of the bucket.
* bucket_name: The name of the bucket.

## Example Usage

```hcl
module "s3_bucket" {
  source             = "../s3"
  bucket_name        = "my-unique-bucket-name"
  versioning_enabled = true
  acl                = "private"
  tags = {
    Environment = "dev"
    Owner       = "your-name"
  }
}
```

