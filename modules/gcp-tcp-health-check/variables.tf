variable "name" {
  type        = string
  description = "(Required) Nome do Health Check"
}

variable "port" {
  type        = number
  description = "(Número da porta que será checada"
  default     = 80
}
