# alicloud_vpc snd alicloud_vswitch
variable "name" {
  description = "The specification of module name."
  type        = string
  default     = "tf-vpc-ecs-eip"
}

# alicloud_network_interface
variable "secondary_private_ip_address_count" {
  description = "The secondary private ip address count of EIP."
  type        = number
  default     = 1
}

# alicloud_instance
variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = "system_disk"
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = "system_disk_description"
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}