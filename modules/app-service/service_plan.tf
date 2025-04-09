resource "azurerm_service_plan" "service_plan" {
  name                = var.azure_service_plan_name
  resource_group_name = var.azure_resource_group
  location            = var.azure_location
  os_type             = var.azure_service_os_type
  sku_name            = var.azure_service_sku_name
}