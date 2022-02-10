data "alicloud_zones" "default" {
}

data "alicloud_images" "default" {
  name_regex = "^centos_6"
}

data "alicloud_instance_types" "default" {
  availability_zone = data.alicloud_zones.default.zones.0.id
}

module "example" {
  source = "../.."

  # alicloud_vpc snd alicloud_vswitch
  name              = var.name
  cidr_block        = "172.16.0.0/18"
  availability_zone = data.alicloud_zones.default.zones.0.id

  # alicloud_eip_address
  eip_isp                  = "BGP"
  eip_internet_charge_type = "PayByBandwidth"
  eip_payment_type         = "PayAsYouGo"

  # alicloud_network_interface
  primary_ip_address                 = "172.16.0.6"
  secondary_private_ip_address_count = var.secondary_private_ip_address_count

  # alicloud_eip_association
  eip_instance_type = "NetworkInterface"

  # alicloud_instance
  instance_type              = data.alicloud_instance_types.default.instance_types.0.id
  system_disk_category       = "cloud_efficiency"
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = data.alicloud_images.default.images.0.id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  ecs_size                   = 1200
  data_disks_name            = "data_disks_name"
  category                   = "cloud_efficiency"
  description                = "tf-vpc-ecs-description"
  encrypted                  = true

}