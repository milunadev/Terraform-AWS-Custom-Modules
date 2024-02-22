output "lambda_arn" {
  value = module.lambda_function_sqs_event.lambda_arn
}

output "lambda_name" {
  value = module.lambda_function_sqs_event.lambda_name
}

output "sqs_queue_arn" {
  value = module.sqs_queue.sqs_queue_arn
}

output "sqs_queue_url" {
  value = module.sqs_queue.sqs_queue_url
}

output "sqs_queue_name" {
  value = module.sqs_queue.sqs_queue_name
}