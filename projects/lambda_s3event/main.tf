module "iam_role" {
  source = "../../common/iam/iam_role"
  role_name = var.role_name
  managed_policy_arns = var.managed_policy_arns
  trusted_role = var.trusted_role
}


module "lambda" {
  source = "../../common/lambda/lambda_function"
  function_name = var.function_name
  runtime = var.runtime
  lambda_role = module.iam_role.role_arn
}

module "s3_bucket" {
  source = "../../common/s3/s3_bucket"
  bucket_name = var.bucket_name
}



module "s3_bucket_policy1" {
  source           = "../../common/s3/s3_bucket_policy"
  bucket_id        = module.s3_bucket.s3_bucket_id
  s3_bucket_policy = jsonencode(var.s3_bucket_policy)
}
