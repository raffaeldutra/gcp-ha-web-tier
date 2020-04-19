variable "name" {
  type        = string
  description = "(Required) Backend Service name"
  default     = null
}

variable "target" {
  type        = string
  description = "(Required) Target"
}

variable "load_balancing_scheme" {
  type        = string
  description = "(Required) Kind of Load Balancer"
  default     = "EXTERNAL"
}

// variable "region" {
//   type = string
// }

// variable "backend_service" {
//   type = string
// }

// variable "network" {
//   type = string
// }

// variable "subnetwork" {
//   type = string
// }

