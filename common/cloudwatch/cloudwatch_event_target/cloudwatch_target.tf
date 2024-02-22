resource "aws_cloudwatch_event_target" "simple_target" {
  rule      = var.cloud_rule
  arn       = var.target_arn
  target_id = var.target_id
}
