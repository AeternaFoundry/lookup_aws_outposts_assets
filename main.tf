data "aws_outposts_assets" "outposts_assets_lookup" {
  for_each = var.outposts_assets_lookup

  arn              = each.value.arn
  host_id_filter   = each.value.host_id_filter
  region           = each.value.region
  status_id_filter = each.value.status_id_filter
}

