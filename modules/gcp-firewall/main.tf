resource "google_compute_firewall" "this" {
  name    = var.name
  network = var.network

  allow {
    protocol = var.protocol
    ports    = var.ports
  }

  source_tags   = var.source_tags
  source_ranges = var.source_ranges
}
