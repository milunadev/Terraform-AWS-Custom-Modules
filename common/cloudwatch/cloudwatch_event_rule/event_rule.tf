resource "aws_cloudwatch_event_rule" "simple_rule" {
  name        = var.cloud_event_name
  description = var.description  
  schedule_expression = var.cron_expression 
  
}