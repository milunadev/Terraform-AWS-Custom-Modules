variable "role_name" {}
variable "managed_policy_arns" {}
variable "trusted_role" {
    description = "Define el servicio que usara el rol, ejemplo: ec2, events, s3"
    default = "lambda"
}

variable "function_name" {}
variable "runtime" {}

variable "bucket_name" {}


variable s3_bucket_policy {
 
}

