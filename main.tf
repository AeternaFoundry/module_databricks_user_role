resource "databricks_user_role" "user_roles" {
  for_each = var.user_roles

  role    = each.value.role
  user_id = each.value.user_id
  api     = each.value.api

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

