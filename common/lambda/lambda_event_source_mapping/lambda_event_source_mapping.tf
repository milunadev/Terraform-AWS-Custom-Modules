resource "aws_lambda_event_source_mapping" "lambda_event_source_mapping_single" {
  event_source_arn = var.event_source_arn
  function_name = var.function_name
  
   dynamic "filter_criteria" {
    for_each = var.enable_filter ? [1] : []
    content {
      filter {
        pattern = var.filter_pattern
      }
    }
  }
}