# importing app service module
module "wnc_mess_app_service" {
  source                              = "../../modules/app-service/"

  azure_app_service_plan_name         = var.azure_app_service_plan_name
  azure_location                      = var.azure_location
  azure_resource_group                = azurerm_resource_group.wnc_mess.name
  azure_app_service_os_kind           = "Windows"
  azure_app_service_reserved_instance = false
  app_service_name = var.app_service_name
}