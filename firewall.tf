// us
module "allow-web-tier-us-central1" {
  source = "./modules/gcp-firewall"

  name    = "allow-web-tier-us-central1"
  network = module.vpc-us.self_link

  protocol = "tcp"
  ports    = [22, 80, 443]

  source_ranges = [
    "130.211.0.0/22",
    "35.191.0.0/16"
  ]
}

// us bastion
module "allow-bastion-us-central1" {
  source = "./modules/gcp-firewall"

  name    = "allow-bastion-us-central1"
  network = module.vpc-us.self_link

  protocol = "tcp"
  ports    = [22]

  source_ranges = ["0.0.0.0/0"]
}

// asia
module "allow-web-tier-asia-east1" {
  source = "./modules/gcp-firewall"

  name    = "allow-web-tier-asia-east1"
  network = module.vpc-asia.self_link

  protocol = "tcp"
  ports    = [22, 80, 443]

  source_ranges = [
    "130.211.0.0/22",
    "35.191.0.0/16"
  ]
}

// asia bastion
module "allow-bastion-asia-east1" {
  source = "./modules/gcp-firewall"

  name    = "allow-bastion-asia-east1"
  network = module.vpc-asia.self_link

  protocol = "tcp"
  ports    = [22]

  source_ranges = ["0.0.0.0/0"]
}
