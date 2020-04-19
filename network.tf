// us
module "vpc-us" {
  source = "./modules/gcp-network"

  name                    = "vpc-us"
  description             = "VPC para USA"
  project                 = local.project
  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
}

module "us-central1-subnetwork" {
  source = "./modules/gcp-subnetwork"

  name          = "us-central1"
  ip_cidr_range = "10.200.10.0/24"
  region        = "us-central1"
  network       = module.vpc-us.self_link
}

// asia
module "vpc-asia" {
  source = "./modules/gcp-network"

  name                    = "vpc-asia"
  description             = "VPC para ASIA"
  project                 = local.project
  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
}

module "asia-east1-subnetwork" {
  source = "./modules/gcp-subnetwork"

  name          = "asia-east1"
  ip_cidr_range = "10.200.20.0/24"
  region        = "asia-east1"
  network       = module.vpc-asia.self_link
}
