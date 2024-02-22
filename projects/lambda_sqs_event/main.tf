module "sqs_queue" {
  source = "../../common/sqs/sqs_queue"
  sqs_name = var.sqs_name
  delivery_delay = 10
  receive_wait_time = 5
}

module "lambda_sqs_event_iam_policy" {
  source = "../../common/iam/iam_policy"
  iam_policy_name = "lambda_sqs_event-iam-policy"
  iam_policy_description = "Politica para el lambda de lambda_sqs_event"
  iam_policy_json = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = var.policy_permit_actions
        Resource = module.sqs_queue.sqs_queue_arn
      }
    ]
  })
}


module "iam_role_lambda_sqs_event" {
  source = "../../common/iam/iam_role"
  role_name = var.role_name
  description = var.role_description
  trusted_role = "lambda"
  managed_policy_arns = ["${module.lambda_sqs_event_iam_policy.iam_policy_arn}", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
}

module "lambda_function_sqs_event" {
  source = "../../common/lambda/lambda_function"
  function_name = var.function_name
  runtime =var.runtime
  handler = var.handler
  lambda_role_arn = module.iam_role_lambda_sqs_event.role_arn
}


module "lambda_event_source_mapping" {
  source = "../../common/lambda/lambda_event_source_mapping"
  event_source_arn = module.sqs_queue.sqs_queue_arn
  function_name = module.lambda_function_sqs_event.lambda_name

}