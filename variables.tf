variable "outposts_assets_lookup" {
  description = <<EOT
Map of outposts_assets_lookup, attributes below
Required:
    - arn
Optional:
    - host_id_filter
    - region
    - status_id_filter
EOT

  type = map(object({
    arn              = string
    host_id_filter   = optional(set(string))
    region           = optional(string)
    status_id_filter = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.outposts_assets_lookup : (
        v.host_id_filter == null || (alltrue([for x in v.host_id_filter : (length(x) >= 1 && length(x) <= 50) && (can(regex("^[0-9A-Za-z-]*$", x)))]))
      )
    ])
    error_message = "all of: must be between 1 and 50 characters; must match [0-9A-Za-z-]"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

