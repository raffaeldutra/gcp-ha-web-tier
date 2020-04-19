resource "google_compute_router" "this" {
  name    = var.name
  region  = var.region
  network = var.network

  bgp {
    asn = 64514
  }
}
