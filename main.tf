provider "aws" {
  region     = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket_prefix = "infrasity-bucket" # Bucket name prefix
  force_destroy = true               # Allow Terraform to delete non-empty buckets

  tags = {
    Name        = "infrasity-bucket"
    Environment = var.environment
  }
}
