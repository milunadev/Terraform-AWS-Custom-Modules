variable "project_name" {
  description = "Nombre del proyecto"
  default = ""
}

variable "sqs_name" {}

variable "role_name" {}
variable "role_description" {
  default = ""
}

variable "function_name" {}
variable "runtime" {
    default = "nodejs18.x"
}
variable "handler" {}




variable "managed_policy_arns" {
  default = "[]"
}

variable "policy_permit_actions" {
  description = "Acciones permitidas para la politica asociada al rol de Lambda"
  type = list(string)
  default = [
          "sqs:ReceiveMessage",
          "sqs:DeleteMessage",
          "sqs:GetQueueAttributes"
        ]
}