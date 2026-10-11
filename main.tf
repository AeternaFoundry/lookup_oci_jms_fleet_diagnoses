data "oci_jms_fleet_diagnoses" "jms_fleet_diagnoses_lookup" {
  for_each = var.jms_fleet_diagnoses_lookup

  fleet_id = each.value.fleet_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

