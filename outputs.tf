output "this_ecs_id" {
  description = "The ID of the ECS instance."
  value       = alicloud_instance.default.id
}

output "this_vpc_id" {
  description = "The ID of the VPC."
  value       = alicloud_vpc.default.id
}

output "this_alicloud_vswitch" {
  description = "The ID of the VSwitch."
  value       = alicloud_vswitch.default.id
}

output "this_eip_id" {
  description = "The ID of the EIP."
  value       = alicloud_eip_address.default.id
}

output "this_ecs_name" {
  description = "The name of the ECS instance."
  value       = alicloud_instance.default.instance_name
}