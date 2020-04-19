resource "google_compute_url_map" "this" {
  name            = var.name
  description     = format("%s Load Balancer", var.name)
  default_service = var.default_service

  host_rule {
    hosts        = ["*"]
    path_matcher = "allpaths"
  }

  path_matcher {
    name            = "allpaths"
    default_service = var.default_service

    path_rule {
      paths   = ["/*"]
      service = var.default_service
    }
  }
}