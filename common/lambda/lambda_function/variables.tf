variable "function_name"{}

variable "runtime"{
  default = "nodejs18.x"
}

variable "handler"{
  default = "index.lambda_handler"
}

variable "memory_size"{
  default = 128
}

variable "timeout" {
  default = 15
}


variable "layers" {
  description = "List of Lambda Layer Version ARNs" 
  default = null
}
variable "lambda_role_arn" {
  description = "IAM role ARN attached to the Lambda Function. This governs both who / what can invoke your Lambda Function, as well as what resources our Lambda Function has access to"
}