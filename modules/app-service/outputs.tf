output "service_plan_id" {
  description = "The ID of the Azure App Service Plan."
  value       = azurerm_service_plan.service_plan.id
}

output "windows_app_id" {
  description = "The ID of the Azure App Service."
  value       = azurerm_windows_web_app.windows_app.id
}