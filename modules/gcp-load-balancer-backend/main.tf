resource "google_compute_backend_service" "this" {
  // count                 = var.load_balancing_scheme == "EXTERNAL" ? 1 : 0

  name                  = var.name
  health_checks         = var.health_checks
  load_balancing_scheme = "EXTERNAL"
  port_name             = "http"
  protocol              = "HTTP"
  timeout_sec           = 10
  session_affinity      = "NONE"

  dynamic "backend" {
    for_each = var.backends
    content {
      group  = backend.value
      balancing_mode        = var.balancing_mode
      max_rate_per_instance = 1
    }
  }
}

// resource "google_compute_forwarding_rule" "this" {
//   count                 = var.load_balancing_scheme == "INTERNAL" ? 1 : 0

//   name                  = var.name
//   region                = var.region
//   load_balancing_scheme = "INTERNAL"
//   backend_service       = google_compute_region_backend_service.this[0].self_link
//   ports                 = ["80"]
//   allow_global_access   = false
//   network               = var.network
//   subnetwork            = var.subnetwork
//   ip_address            = var.ip_address
// }

// resource "google_compute_region_backend_service" "this" {
//   count = var.load_balancing_scheme == "INTERNAL" ? 1 : 0

//   name   = var.name
//   region = var.region

//   dynamic "backend" {
//     for_each = var.group
//     content {
//       group  = backend.value
//     }
//   }

//   health_checks = var.health_checks
// }
