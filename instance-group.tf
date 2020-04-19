module "us-central1-instance-groups" {
  source = "./modules/gcp-instance-groups"

  name                      = "web-tier-us-central1"
  base_instance_name        = "web-tier"
  region                    = "us-central1"
  distribution_policy_zones = ["us-central1-a", "us-central1-b"]
  instance_template         = module.us-central1-instance-templates.self_link

  resource_depends_on = [
    module.us-central1-router-nat
  ]
}

module "asia-east1-instance-groups" {
  source = "./modules/gcp-instance-groups"

  name                      = "web-tier-asia-east1"
  base_instance_name        = "web-tier"
  region                    = "asia-east1"
  distribution_policy_zones = ["asia-east1-a", "asia-east1-b"]
  instance_template         = module.asia-east1-instance-templates.self_link

  resource_depends_on = [
    module.asia-east1-router-nat
  ]
}
