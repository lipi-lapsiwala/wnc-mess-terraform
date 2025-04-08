resource "azurerm_app_service_plan" "example" {
  name                = "api-appserviceplan-pro"
  location            = var.azure_location
  resource_group_name = var.azure_resource_group
  kind = var.azure_app_service_os_kind

  sku {
    tier = "Standard"
    size = "S1"
  }
}