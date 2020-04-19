// us
module "bastion-us-central1" {
  source = "./modules/gcp-instance"

  name                  = "bastion-us-central1"
  network               = module.vpc-us.id
  subnetwork            = module.us-central1-subnetwork.self_link
  zone                  = "us-central1-a"
  access_config_enabled = true
  tags = [
    "allow-bastion-us-central1"
  ]
}

// asia
module "bastion-asia-east1" {
  source = "./modules/gcp-instance"

  name                  = "bastion-asia-east1"
  network               = module.vpc-asia.id
  subnetwork            = module.asia-east1-subnetwork.self_link
  zone                  = "asia-east1-a"
  access_config_enabled = true
  tags = [
    "allow-bastion-asia-east1"
  ]
}
