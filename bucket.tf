provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

resource "aws_s3_bucket" "temps3" {
  bucket = var.bucket_name
  acl    = var.acl_value
}

module "s3" {
  source = "/mnt/c/Users/Wesley Kishore/OneDrive/Desktop/terraforms_retry"
}