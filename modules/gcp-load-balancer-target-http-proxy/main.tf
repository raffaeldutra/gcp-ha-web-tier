resource "google_compute_target_http_proxy" "this" {
  name        = var.name
  description = format("%s Load Balancer", var.name)
  url_map     = var.url_map
}