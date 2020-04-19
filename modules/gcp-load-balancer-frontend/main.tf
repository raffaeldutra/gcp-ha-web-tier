// Frontend
resource "google_compute_global_forwarding_rule" "this" {
  name                  = format("%s", var.name)
  target                = var.target
  port_range            = "80"
  load_balancing_scheme = var.load_balancing_scheme
}