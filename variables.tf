variable "user_roles" {
  description = <<EOT
Map of user_roles, attributes below
Required:
    - role
    - user_id
Optional:
    - api
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    role    = string
    user_id = string
    api     = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

