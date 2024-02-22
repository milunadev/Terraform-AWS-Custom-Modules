resource "aws_s3_bucket_policy" "basic_s3_policy" {
  bucket = var.bucket_id
  policy = var.s3_bucket_policy
}

