variable "name" {
  type        = string
  description = "(Required) Backend Service name"
  default     = null
}

variable "url_map" {
  type        = string
  description = "(Required) URL map"
}

variable "vm_depends_on" {
  type    = any
  default = null
}
