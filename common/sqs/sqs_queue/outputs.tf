output "sqs_queue_arn" {
  value = aws_sqs_queue.simple_sqs_queue.arn
}
output "sqs_queue_url" {
  value = aws_sqs_queue.simple_sqs_queue.url
}
output "sqs_queue_name" {
  value = aws_sqs_queue.simple_sqs_queue.name
}