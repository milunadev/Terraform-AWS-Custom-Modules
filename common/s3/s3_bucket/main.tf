resource "aws_s3_bucket" "single_s3_bucket" {
  bucket = var.bucket_name
  tags = var.bucket_tags
  

}

# resource "aws_s3_bucket_public_access_block" "example" {
#   bucket = aws_s3_bucket.single_s3_bucket.id
#   block_public_acls       = false
#   block_public_policy     = false
#   ignore_public_acls      = false
#   restrict_public_buckets = false
# }