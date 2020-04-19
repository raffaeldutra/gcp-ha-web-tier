provider "google" {
  project = local.project
  region  = "us-central1"
}

variable "project" {
  type = map
  default = {
    "dev" = "linux-dev-272802"
    "prd" = "linux-261900"
  }
}