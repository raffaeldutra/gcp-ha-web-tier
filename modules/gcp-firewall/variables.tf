variable "name" {
  type        = string
  description = "Nome para esta regra"
}

variable "network" {
  type        = string
  description = "Em qual rede esta regra deverá ficar"
}

variable "protocol" {
  type        = string
  description = "Protocolo para liberação das regras"
}

variable "ports" {
  type        = list(number)
  description = "Lista de portas para liberação"
}

variable "source_tags" {
  type        = list(string)
  description = "Nomes de tags que serão utilizadas para utilizar com esta regra de firewall"
  default     = null
}

variable "source_ranges" {
  type        = list(string)
  description = "CIDR para liberação de endereços"
}
