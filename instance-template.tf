module "us-central1-instance-templates" {
  source = "./modules/gcp-instance-templates"

  name                 = "it-web-tier-us-central1"
  instance_description = "Final Project"
  project              = local.project

  tags = ["http-server", "allow-web-tier-us-central1"]

  network    = module.vpc-us.self_link
  subnetwork = module.us-central1-subnetwork.self_link

  metadata_startup_script = "scripts/us-central1-web-tier.sh"

  labels = {
    environment = terraform.workspace
    purpose     = "Final Project"
  }
}

module "asia-east1-instance-templates" {
  source = "./modules/gcp-instance-templates"

  name                 = "it-web-tier-asia-east1"
  instance_description = "Final Project"
  project              = local.project

  tags = ["http-server", "allow-web-tier-asia-east1"]

  network    = module.vpc-asia.self_link
  subnetwork = module.asia-east1-subnetwork.self_link

  metadata_startup_script = "scripts/asia-east1-web-tier.sh"

  labels = {
    environment = terraform.workspace
    purpose     = "Final Project"
  }
}