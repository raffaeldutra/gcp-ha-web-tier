resource "google_compute_instance_template" "this" {
  name_prefix = lower(var.name)
  description = "Utilizado para criar ${lower(var.name)}"

  tags = var.tags

  labels = {
    environment = terraform.workspace
  }

  instance_description = var.instance_description
  machine_type         = var.machine_type
  can_ip_forward       = var.can_ip_forward

  scheduling {
    automatic_restart   = var.automatic_restart
    on_host_maintenance = var.on_host_maintenance
  }

  // Create a new boot disk from an image
  disk {
    source_image = var.source_image
    auto_delete  = var.auto_delete
    boot         = var.boot
  }

  lifecycle {
    create_before_destroy = true
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
  }

  metadata_startup_script = file(var.metadata_startup_script)
}