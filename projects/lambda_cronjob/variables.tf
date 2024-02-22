variable "function_name" {}
variable "role_name" {}
variable "cloud_event_name" {}
variable "cron_expression" {}
variable "managed_policy_arns" {
  default = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
}


variable "role_description"  {
    default = ""
}

variable "cloudwatch_event_rule_description" {
  default = ""
}

variable "runtime" {
    default = "nodejs18.x"
}
variable "handler" {
  default = "index.lambda_handler"
}

variable "period" {
  description = "DESCRIPTIVO: Define la periodicidad para completar el target id del cronjob. "
  default = ""
}

variable "layers" {
  description = "List of Lambda Layer Version ARNs" 
  default = null
}


#   "cron(0 * * * ? *)"   Ejecuta al inicio de cada hora
#   "cron(* * * * ? *)"   Ejecuta cada minuto
#   "cron(0 0 12 ? * MON *)"   Ejecuta cada lunes a las 12


# "python3.12"
# "nodejs18.x"

### LAYERS
# python-tabulate = arn:aws:lambda:us-east-2:536788082394:layer:python-tabulate:1
# python-request-layer = arn:aws:lambda:us-east-2:536788082394:layer:python-request-layer:1