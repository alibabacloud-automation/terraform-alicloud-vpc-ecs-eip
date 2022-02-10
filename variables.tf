# alicloud_vpc snd alicloud_vswitch
variable "name" {
  description = "The specification of module name."
  type        = string
  default     = ""
}

variable "cidr_block" {
  description = "The cidr block of VPC"
  type        = string
  default     = "172.16.0.0/18"
}

variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = ""
}

# alicloud_eip_address
variable "eip_isp" {
  description = "The ISP of EIP address."
  type        = string
  default     = "BGP"
}

variable "eip_internet_charge_type" {
  description = "The specification of the eip internet charge type."
  type        = string
  default     = "PayByBandwidth"
}

variable "eip_payment_type" {
  description = "The payment type of EIP address."
  type        = string
  default     = "PayAsYouGo"
}

# alicloud_network_interface
variable "primary_ip_address" {
  description = "The primary private IP address of the ENI. The specified IP address must be available within the CIDR block of the VSwitch. If this parameter is not specified, an available IP address is assigned from the VSwitch CIDR block at random."
  type        = string
  default     = ""
}

variable "secondary_private_ip_address_count" {
  description = "The secondary private ip address count of EIP."
  type        = number
  default     = 1
}

# alicloud_eip_association
variable "eip_instance_type" {
  description = "The instance type of EIP."
  type        = string
  default     = "NetworkInterface"
}

# alicloud_instance
variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = ""
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = ""
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = ""
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = ""
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

variable "data_disks_name" {
  description = "The name of the data disk."
  type        = string
  default     = ""
}

variable "ecs_size" {
  description = "The specification of the ecs size."
  type        = number
  default     = 1200
}

variable "category" {
  description = "The specification of the category."
  type        = string
  default     = "cloud_efficiency"
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = ""
}

variable "encrypted" {
  description = "Encrypted the data in this disk."
  type        = bool
  default     = true
}