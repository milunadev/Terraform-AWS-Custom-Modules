resource "aws_sqs_queue" "simple_sqs_queue" {
  name = var.sqs_name
  delay_seconds = var.delivery_delay
  receive_wait_time_seconds = var.receive_wait_time
  fifo_queue = var.fifo_queue
  visibility_timeout_seconds = var.visibility_timeout_seconds
}

