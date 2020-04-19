resource "google_storage_bucket" "tf-chapter15" {
  name          = format("gcs-chapter15-%s", terraform.workspace)
  force_destroy = false
}
