variable "event_source_arn" {
  
}
variable "function_name" {
  default = ""
}

variable "enable_filter" {
  description = "Booleano, se incluye o no un filtro"
  default = false
}


variable "filter_pattern" {
  description = "El patrón de filtro a aplicar"
  type        = string
  default     = "{}"  # Un patrón vacío o un valor predeterminado
}

##EJEMPLO DE FILTER_PATTERN
# jsonencode({
#   body = {
#   Temperature : [{ numeric : [">", 0, "<=", 100] }]
#   Location : ["New York"]
#  }
# })