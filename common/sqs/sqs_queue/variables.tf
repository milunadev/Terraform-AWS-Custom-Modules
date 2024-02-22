variable "sqs_name" {
  
}

variable "delivery_delay" {
  description = "Tiempo que esperan los mensajes para estar disponibles para consumo"
  default = 0
}

variable "receive_wait_time" {
  description = "Tiempo que espera el consumer por mensajes. Habilita el LONG POLLING. De 0-20s"
  default = 0
}

variable "fifo_queue" {
  description = "Recibe un valor booleano"
  default = false
}

variable "visibility_timeout_seconds" {
  description = "Periodo de invisibilidad del mensaje. Ajustar en caso de procesamiento largo o muy corto."
  default = 30
}

