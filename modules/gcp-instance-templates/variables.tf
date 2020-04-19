// data
variable "project" {
  type        = string
  description = "(Required) Which project to put this template"
}

variable "name" {
  type        = string
  description = "Name for the forwarding rule and prefix for supporting resources."
}

variable "machine_type" {
  type        = string
  description = "(Required) Machine type (size)"
  default     = "f1-micro"
}

variable "instance_description" {
  type        = string
  description = "(Required) Description for the instances"
}

variable "labels" {
  type        = map
  description = "(Required) Labels"
  default     = {}
}

variable "tags" {
  type        = list
  description = "(Required) Source image"
  default     = []
}

variable "can_ip_forward" {
  type        = bool
  description = "(Required) Can IP Forward"
  default     = false
}

variable "network" {
  type        = string
  description = "(Required) Qual rede este template deverá ficar"
}

variable "subnetwork" {
  type        = string
  description = "(Required) Qual subrede este template deverá ficar"
}

variable "metadata_startup_script" {
  type        = string
  description = "(Required) Qual subrede este template deverá ficar"
  default      = null
}

// scheduling
variable "on_host_maintenance" {
  type        = string
  description = "(Required) Host Maintanance"
  default     = "MIGRATE"
}

variable "automatic_restart" {
  type        = bool
  description = "(Required) Automatic restart"
  default     = true
}

// disk
variable "source_image" {
  type        = string
  description = "(Required) Source image"
  default     = "debian-cloud/debian-9"
}

variable "auto_delete" {
  type        = bool
  description = "(Required) Auto delete"
  default     = true
}

variable "boot" {
  type        = bool
  description = "(Required) Boot"
  default     = true
}