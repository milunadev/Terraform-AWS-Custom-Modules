output "lambda_arn" {
  value = aws_lambda_function.simple_lambda_function.arn
}

output "lambda_name" {
  value = aws_lambda_function.simple_lambda_function.function_name
}