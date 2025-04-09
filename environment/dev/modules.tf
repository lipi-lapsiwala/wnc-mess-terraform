# importing app service module
module "wnc_mess_app_service" {
  source = "../../modules/app-service"

  azure_service_plan_name = var.azure_app_service_plan_name
  azure_location          = var.azure_location
  azure_resource_group    = azurerm_resource_group.wnc_mess.name
  azure_service_os_type   = "Windows"
  azure_service_sku_name  = "F1" # Free tier
  windows_web_app_name    = var.azure_app_service_name
  https_only              = true
}