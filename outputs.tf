output "user_roles_id" {
  description = "Map of id values across all user_roles, keyed the same as var.user_roles except keys with no id are omitted"
  value       = { for k, v in databricks_user_role.user_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_roles_api" {
  description = "Map of api values across all user_roles, keyed the same as var.user_roles except keys with no api are omitted"
  value       = { for k, v in databricks_user_role.user_roles : k => v.api if v.api != null && length(v.api) > 0 }
}
output "user_roles_provider_config" {
  description = "Map of provider_config values across all user_roles, keyed the same as var.user_roles except keys with no provider_config are omitted"
  value       = { for k, v in databricks_user_role.user_roles : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "user_roles_role" {
  description = "Map of role values across all user_roles, keyed the same as var.user_roles except keys with no role are omitted"
  value       = { for k, v in databricks_user_role.user_roles : k => v.role if v.role != null && length(v.role) > 0 }
}
output "user_roles_user_id" {
  description = "Map of user_id values across all user_roles, keyed the same as var.user_roles except keys with no user_id are omitted"
  value       = { for k, v in databricks_user_role.user_roles : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

