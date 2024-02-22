data "aws_iam_policy_document" "basic_aws_iam_policy_document" {
  statement {
    actions = var.policy_actions

    resources = var.policy_resources

    dynamic "principals" {
      for_each = var.principals

      content {
        type        = principals.value.type
        identifiers = principals.value.identifiers
      }
    }
  }
}