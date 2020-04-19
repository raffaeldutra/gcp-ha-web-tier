// us
module "us-central1-load-balancer-health-check" {
  source = "./modules/gcp-health-check"

  name = "hc-us-central1"
}

// asia
module "asia-east1-load-balancer-health-check" {
  source = "./modules/gcp-health-check"

  name = "hc-asia-east1"
}

