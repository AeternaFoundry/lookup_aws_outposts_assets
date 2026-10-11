output "outposts_assets_lookup_id" {
  description = "Map of id values across all outposts_assets_lookup, keyed the same as var.outposts_assets_lookup"
  value       = { for k, v in data.aws_outposts_assets.outposts_assets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "outposts_assets_lookup_arn" {
  description = "Map of arn values across all outposts_assets_lookup, keyed the same as var.outposts_assets_lookup"
  value       = { for k, v in data.aws_outposts_assets.outposts_assets_lookup : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "outposts_assets_lookup_asset_ids" {
  description = "Map of asset_ids values across all outposts_assets_lookup, keyed the same as var.outposts_assets_lookup"
  value       = { for k, v in data.aws_outposts_assets.outposts_assets_lookup : k => v.asset_ids if v.asset_ids != null && length(v.asset_ids) > 0 }
}
output "outposts_assets_lookup_host_id_filter" {
  description = "Map of host_id_filter values across all outposts_assets_lookup, keyed the same as var.outposts_assets_lookup"
  value       = { for k, v in data.aws_outposts_assets.outposts_assets_lookup : k => v.host_id_filter if v.host_id_filter != null && length(v.host_id_filter) > 0 }
}
output "outposts_assets_lookup_region" {
  description = "Map of region values across all outposts_assets_lookup, keyed the same as var.outposts_assets_lookup"
  value       = { for k, v in data.aws_outposts_assets.outposts_assets_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "outposts_assets_lookup_status_id_filter" {
  description = "Map of status_id_filter values across all outposts_assets_lookup, keyed the same as var.outposts_assets_lookup"
  value       = { for k, v in data.aws_outposts_assets.outposts_assets_lookup : k => v.status_id_filter if v.status_id_filter != null && length(v.status_id_filter) > 0 }
}

