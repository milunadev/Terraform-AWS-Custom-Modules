# module "iam_iam-assumable-role" {
#   source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
#   version = "5.34.0"
#   create_role = var.create_role
#   role_name = var.role_name
#   custom_role_policy_arns = var.custom_role_policy_arns
#   trusted_role_arns = var.trusted_role_arns
# }


resource "aws_iam_role" "iam_role_modular" {
  name = var.role_name
  description = var.description
  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "${var.trusted_role}.amazonaws.com"
        }
      },
    ]
  })
  managed_policy_arns = var.managed_policy_arns
  tags = {
    name = var.role_name
  }
}