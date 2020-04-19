// us
module "us-central1-router" {
  source = "./modules/gcp-router"

  name    = format("router-%s", module.us-central1-subnetwork.region)
  region  = module.us-central1-subnetwork.region
  network = module.vpc-us.self_link
}

module "us-central1-router-nat" {
  source = "./modules/gcp-router-nat"

  name   = format("router-nat-%s", module.us-central1-subnetwork.region)
  router = module.us-central1-router.name
  region = module.us-central1-router.region
}

// asia
module "asia-east1-router" {
  source = "./modules/gcp-router"

  name    = format("router-%s", module.asia-east1-subnetwork.region)
  region  = module.asia-east1-subnetwork.region
  network = module.vpc-asia.self_link
}

module "asia-east1-router-nat" {
  source = "./modules/gcp-router-nat"

  name   = format("router-nat-%s", module.asia-east1-subnetwork.region)
  router = module.asia-east1-router.name
  region = module.asia-east1-router.region
}
