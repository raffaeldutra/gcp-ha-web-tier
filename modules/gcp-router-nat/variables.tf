variable "name" {
  type        = string
  description = "Nome para esta router nat"
}

variable "router" {
  type        = string
  description = "Valor que será consumido do módulo gcp-router do campo name"
}

variable "region" {
  type        = string
  description = "Valor que será consumido do módulo gcp-router do campo region"
}

variable "nat_ip_allocate_option" {
  type        = string
  description = "Como IPs externons devem ser alocados para esta NAT"
  default     = "AUTO_ONLY"
}

variable "source_subnetwork_ip_ranges_to_nat" {
  type        = string
  description = "Como que a NAT deve ser configurada por subrede"
  default     = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

// log config
variable "log_config_enable" {
  type        = bool
  description = "Habilitar ou não o log"
  default     = false
}

variable "log_config_filter" {
  type        = string
  description = "Indica se os logs devem ser exportados"
  default     = "ERRORS_ONLY"
}