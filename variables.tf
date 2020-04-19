variable "gcp" {
  type        = map
  description = "Informations used for GCP provider"
  default = {
    region = "us-central1"
  }
}
