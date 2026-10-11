variable "jms_fleet_diagnoses_lookup" {
  description = <<EOT
Map of jms_fleet_diagnoses_lookup, attributes below
Required:
    - fleet_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    fleet_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

