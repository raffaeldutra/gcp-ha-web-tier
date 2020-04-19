// us external
module "us-central1-load-balancer-external" {
  source = "./modules/gcp-load-balancer"

  name            = local.project_name
  default_service = module.us-central1-load-balancer-backend.self_link
}

module "us-central1-load-balancer-target-http-proxy" {
  source = "./modules/gcp-load-balancer-target-http-proxy"

  name    = local.project_name
  url_map = module.us-central1-load-balancer-external.self_link
}

module "us-central1-load-balancer-frontend" {
  source = "./modules/gcp-load-balancer-frontend"

  name   = local.project_name
  target = module.us-central1-load-balancer-target-http-proxy.self_link
}

module "us-central1-load-balancer-backend" {
  source = "./modules/gcp-load-balancer-backend"

  name = local.project_name
  backends = [
    module.us-central1-instance-groups.instance_group,
    module.asia-east1-instance-groups.instance_group
  ]
  health_checks = [module.us-central1-load-balancer-health-check.self_link]
}

