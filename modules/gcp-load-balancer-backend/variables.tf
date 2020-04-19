variable "name" {
  type        = string
  description = "(Required) Backend Service name"
}

variable "backends" {
  type        = list
  description = "(Required) Backend Service name"
}

variable "load_balancing_scheme" {
  type        = string
  description = "(Required) Kind of Load Balancer"
  default     = "EXTERNAL"
}

variable "balancing_mode" {
  type        = string
  description = "Balancing mode"
  default     = "RATE"
}

variable "health_checks" {
  type        = list(string)
  description = "(Required) Uma lista com todos os Health Checks que deseja utilizar"
}