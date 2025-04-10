output "container_app_url" {
  description = "The URL of the Container App"
  value       = "https://${azurerm_container_app.app.latest_revision_fqdn}"
}

output "container_registry_url" {
  description = "The URL of the Container Registry"
  value       = azurerm_container_registry.acr.login_server
}

output "container_registry_name" {
  description = "The name of the Container Registry"
  value       = azurerm_container_registry.acr.name
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "application_insights_connection_string" {
  description = "The connection string for Application Insights"
  value       = azurerm_application_insights.appinsights.connection_string
  sensitive   = true
}

output "container_app_identity_principal_id" {
  description = "The principal ID of the container app's managed identity"
  value       = azurerm_user_assigned_identity.app_identity.principal_id
}