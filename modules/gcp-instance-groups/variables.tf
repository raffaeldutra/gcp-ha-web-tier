variable "name" {
  type        = string
  description = "(Required) Nome do grupo"
}

variable "base_instance_name" {
  type        = string
  description = "(Required) Nome base (prefixo) que será utilizado quando as máquinas levantarem"
}

variable "region" {
  type        = string
  description = "(Required) Nome da região"
}

variable "distribution_policy_zones" {
  type        = list(string)
  description = "(Required) Em quais zonas devem estar as máquinas"
}

variable "instance_template" {
  type        = string
  description = "(Required) Nome do template que deverá ser baseado"
}

variable "resource_depends_on" {
  type        = any
  description = "(Required) Nomes dos recursos que este módulo depende"
  default     = null
}
