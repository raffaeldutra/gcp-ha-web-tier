variable "name" {
  type        = string
  description = "Esta variável deve do tipo string e deverá receber um nome de resource"
}

variable "machine_type" {
  type        = string
  description = "Esta variável deve do tipo string e deverá receber um tamanho de máquina para o Google Cloud Platform"
  default     = "f1-micro"
}

variable "image" {
  type        = string
  description = "Esta variável deve do tipo string e deverá receber um nome de resource"
  default     = "debian-cloud/debian-9"
}

variable "zone" {
  type        = string
  description = "Em qual zona sua instância irá ficar"
}

variable "network" {
  type        = string
  description = "Em qual rede sua instância irá ficar"
  default     = "default"
}

variable "subnetwork" {
  type        = string
  description = "Em qual subrede sua instância irá ficar"
}

variable "access_config_enabled" {
  type    = bool
  default = false
}

variable "tags" {
  type        = list
  description = "Lista de tags que serão utilizadas do firewall"
  default     = [
    "default-allow-ssh",
    "default-allow-http"
  ]
}