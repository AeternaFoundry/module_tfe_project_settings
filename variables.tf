variable "project_settings" {
  description = <<EOT
Map of project_settings, attributes below
Required:
    - project_id
Optional:
    - default_agent_pool_id
    - default_execution_mode
EOT

  type = map(object({
    project_id             = string
    default_agent_pool_id  = optional(string)
    default_execution_mode = optional(string)
  }))
}

