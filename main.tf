data "ovh_cloud_instance_flavors" "cloud_instance_flavors_lookup" {
  for_each = var.cloud_instance_flavors_lookup

  service_name = each.value.service_name
  region       = each.value.region
}

