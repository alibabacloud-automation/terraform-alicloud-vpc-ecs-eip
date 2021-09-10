variable "name" {
  default = "terraform_test"
}

data "alicloud_zones" "default" {
  available_resource_creation = "Instance"
  enable_details              = true
}

module "example" {
  source            = "../"
  name              = var.name
  availability_zone = data.alicloud_zones.default.zones.0.id
}
