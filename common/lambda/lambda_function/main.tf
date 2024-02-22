resource "aws_lambda_function" "simple_lambda_function" {
  function_name = var.function_name
  role = var.lambda_role_arn
  runtime       = var.runtime
  handler       = var.handler
  memory_size   = var.memory_size
  timeout       = var.timeout

  filename = can(regex("nodejs", var.runtime)) ? "${path.module}/code/indexnode.zip" : can(regex("python", var.runtime)) ? "${path.module}/code/indexpython.zip" : "${path.module}/code/default.zip"

  lifecycle {
    ignore_changes = [filename, source_code_hash]
  }

  layers = var.layers
}



#If you want to manage function code and infrastructure resources (such as IAM permissions, policies, events, etc) in separate flows (e.g., different repositories, teams, CI/CD pipelines).
#Disable source code tracking to turn off deployments (and rollbacks) using the module by setting ignore_source_code_hash = true and deploy a dummy function.