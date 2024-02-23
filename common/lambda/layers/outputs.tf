output "panda_layer_arn" {
  value = aws_lambda_layer_version.lambda_layer_panda.arn
}

output "bi_layer_arn" {
  value = aws_lambda_layer_version.lambda_layer_bi-data.arn
}