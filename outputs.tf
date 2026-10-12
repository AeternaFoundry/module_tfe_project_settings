output "project_settings_id" {
  description = "Map of id values across all project_settings, keyed the same as var.project_settings except keys with no id are omitted"
  value       = { for k, v in tfe_project_settings.project_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_settings_default_agent_pool_id" {
  description = "Map of default_agent_pool_id values across all project_settings, keyed the same as var.project_settings except keys with no default_agent_pool_id are omitted"
  value       = { for k, v in tfe_project_settings.project_settings : k => v.default_agent_pool_id if v.default_agent_pool_id != null && length(v.default_agent_pool_id) > 0 }
}
output "project_settings_default_execution_mode" {
  description = "Map of default_execution_mode values across all project_settings, keyed the same as var.project_settings except keys with no default_execution_mode are omitted"
  value       = { for k, v in tfe_project_settings.project_settings : k => v.default_execution_mode if v.default_execution_mode != null && length(v.default_execution_mode) > 0 }
}
output "project_settings_overwrites" {
  description = "Map of overwrites values across all project_settings, keyed the same as var.project_settings except keys with no overwrites are omitted"
  value       = { for k, v in tfe_project_settings.project_settings : k => v.overwrites if v.overwrites != null && length(v.overwrites) > 0 }
}
output "project_settings_project_id" {
  description = "Map of project_id values across all project_settings, keyed the same as var.project_settings except keys with no project_id are omitted"
  value       = { for k, v in tfe_project_settings.project_settings : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

