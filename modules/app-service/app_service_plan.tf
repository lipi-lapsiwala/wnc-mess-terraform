resource "azurerm_app_service_plan" "azure_app_service_plan" {
  name                = var.azure_app_service_plan_name
  location            = var.azure_location
  resource_group_name = var.azure_resource_group
  kind                = var.azure_app_service_os_kind
  reserved            = var.azure_app_service_reserved_instance

  sku {
    tier = "Free"
    size = "F1"
  }
}