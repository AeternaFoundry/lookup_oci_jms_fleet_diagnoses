output "jms_fleet_diagnoses_lookup_id" {
  description = "Map of id values across all jms_fleet_diagnoses_lookup, keyed the same as var.jms_fleet_diagnoses_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_jms_fleet_diagnoses.jms_fleet_diagnoses_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jms_fleet_diagnoses_lookup_filter" {
  description = "Map of filter values across all jms_fleet_diagnoses_lookup, keyed the same as var.jms_fleet_diagnoses_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_jms_fleet_diagnoses.jms_fleet_diagnoses_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "jms_fleet_diagnoses_lookup_fleet_diagnosis_collection" {
  description = "Map of fleet_diagnosis_collection values across all jms_fleet_diagnoses_lookup, keyed the same as var.jms_fleet_diagnoses_lookup except keys with no fleet_diagnosis_collection are omitted"
  value       = { for k, v in data.oci_jms_fleet_diagnoses.jms_fleet_diagnoses_lookup : k => v.fleet_diagnosis_collection if v.fleet_diagnosis_collection != null && length(v.fleet_diagnosis_collection) > 0 }
}
output "jms_fleet_diagnoses_lookup_fleet_id" {
  description = "Map of fleet_id values across all jms_fleet_diagnoses_lookup, keyed the same as var.jms_fleet_diagnoses_lookup except keys with no fleet_id are omitted"
  value       = { for k, v in data.oci_jms_fleet_diagnoses.jms_fleet_diagnoses_lookup : k => v.fleet_id if v.fleet_id != null && length(v.fleet_id) > 0 }
}

