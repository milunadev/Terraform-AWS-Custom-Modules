

module "aws_lambda_cronjonb" {
  source = "../../common/lambda/lambda_function"

  function_name = var.function_name
  runtime =var.runtime
  handler = var.handler
  layers = var.layers

  lambda_role_arn = module.iam_role_lambda_cronjonb.role_arn
}

module "iam_role_lambda_cronjonb" {
  source = "../../common/iam/iam_role"
  role_name = var.role_name
  description = var.role_description
  trusted_role = "lambda"
  managed_policy_arns = var.managed_policy_arns
}

module "cloudwatch_event_rule" {
  source = "../../common/cloudwatch/cloudwatch_event_rule"
  cloud_event_name       = var.cloud_event_name
  description  = var.cloudwatch_event_rule_description  
  cron_expression  = var.cron_expression 
}

# Permiso de CloudWatch Events (EventBridge) para 
# invocar a la función Lambda.
resource "aws_lambda_permission" "allow_cloudwatch" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = module.aws_lambda_cronjonb.lambda_name
  principal     = "events.amazonaws.com"
  source_arn    = module.cloudwatch_event_rule.cloudwatch_event_rule_arn
}


module "cloudwatch_target_lambda" {
  source = "../../common/cloudwatch/cloudwatch_event_target"
  cloud_rule = var.cloud_event_name
  target_arn = module.aws_lambda_cronjonb.lambda_arn
  target_id = "cronjob-${var.function_name}-${var.period}"
}