resource "tfe_project_settings" "project_settings" {
  for_each = var.project_settings

  project_id             = each.value.project_id
  default_agent_pool_id  = each.value.default_agent_pool_id
  default_execution_mode = each.value.default_execution_mode
}

