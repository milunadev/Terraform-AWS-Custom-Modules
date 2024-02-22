output "policy_json" {
  value = data.aws_iam_policy_document.basic_aws_iam_policy_document.json
  description = "El JSON de la política IAM."
}