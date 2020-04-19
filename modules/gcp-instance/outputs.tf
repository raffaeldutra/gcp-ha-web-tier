output "instance_id" {
  value = google_compute_instance.this.instance_id
}

output "cpu_platform" {
  value = google_compute_instance.this.cpu_platform
}
