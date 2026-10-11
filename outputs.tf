output "cloud_instance_flavors_lookup_flavors" {
  description = "Map of flavors values across all cloud_instance_flavors_lookup, keyed the same as var.cloud_instance_flavors_lookup except keys with no flavors are omitted"
  value       = { for k, v in data.ovh_cloud_instance_flavors.cloud_instance_flavors_lookup : k => v.flavors if v.flavors != null && length(v.flavors) > 0 }
}
output "cloud_instance_flavors_lookup_region" {
  description = "Map of region values across all cloud_instance_flavors_lookup, keyed the same as var.cloud_instance_flavors_lookup except keys with no region are omitted"
  value       = { for k, v in data.ovh_cloud_instance_flavors.cloud_instance_flavors_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloud_instance_flavors_lookup_service_name" {
  description = "Map of service_name values across all cloud_instance_flavors_lookup, keyed the same as var.cloud_instance_flavors_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_instance_flavors.cloud_instance_flavors_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

