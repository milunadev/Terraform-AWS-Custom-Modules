variable "role_name" {
  description = "El nombre del rol de IAM a crear"
  type        = string
}

variable "description" {
  type        = string
  default = " "
}

variable "managed_policy_arns" {
  description = "Lista de ARNs de IAM para adjuntar"
  type        = list(string)
  default     = []
}

variable "trusted_role" {
  description = "Define el servicio que usara el rol, ejemplo: ec2, events, "
}

# El módulo utilizaría estas variables para crear y configurar el rol.