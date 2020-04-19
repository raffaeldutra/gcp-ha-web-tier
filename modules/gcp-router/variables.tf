variable "name" {
  type        = string
  description = "Nome que será dado para este router"
}


variable "region" {
  type        = string
  description = "Valor vindo do módulo gcp-subnetwork"
}


variable "network" {
  type        = string
  description = "Valor vindo do módulo gcp-network"
  }