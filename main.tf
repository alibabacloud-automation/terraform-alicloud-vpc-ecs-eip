resource "alicloud_vpc" "default" {
  vpc_name   = var.name
  cidr_block = var.cidr_block
}

resource "alicloud_vswitch" "default" {
  vswitch_name = var.name
  cidr_block   = var.cidr_block
  vpc_id       = alicloud_vpc.default.id
  zone_id      = var.availability_zone
}

resource "alicloud_security_group" "default" {
  name   = var.name
  vpc_id = alicloud_vpc.default.id
}

resource "alicloud_eip_address" "default" {
  address_name         = var.name
  isp                  = var.eip_isp
  internet_charge_type = var.eip_internet_charge_type
  payment_type         = var.eip_payment_type
}

resource "alicloud_ecs_network_interface" "default" {
  network_interface_name             = var.name
  vswitch_id                         = alicloud_vswitch.default.id
  security_group_ids                 = [alicloud_security_group.default.id]
  primary_ip_address                 = var.primary_ip_address
  secondary_private_ip_address_count = var.secondary_private_ip_address_count
}

resource "alicloud_eip_association" "default" {
  allocation_id = alicloud_eip_address.default.id
  instance_type = var.eip_instance_type
  instance_id   = alicloud_ecs_network_interface.default.id
}

resource "alicloud_instance" "default" {
  instance_name              = var.name
  availability_zone          = var.availability_zone
  security_groups            = [alicloud_security_group.default.id]
  vswitch_id                 = alicloud_vswitch.default.id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.name
    size        = var.ecs_size
    category    = var.category
    description = var.description
    encrypted   = true
  }
}
