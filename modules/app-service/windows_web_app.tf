resource "azurerm_windows_web_app" "windows_app" {
  name                = var.windows_web_app_name
  location            = var.azure_location
  resource_group_name = var.azure_resource_group
  service_plan_id     = azurerm_service_plan.service_plan.id
  https_only          = var.https_only

  site_config {
    # When set to true, it keeps the app service running even when idle
    always_on = false
    virtual_application {
      physical_path = "site\\wwwroot"
      preload       = false
      virtual_path  = "/"
    }
  }

  app_settings = {
    # When set to "1", it tells Azure to run your app from a .zip package (instead of copying files to wwwroot). 
    # It's faster and more stable than file-by-file deployments.
    "WEBSITE_RUN_FROM_PACKAGE" = "0"
  }

  # This identity can be given access to resources like: Key Vault secrets, Azure SQL Database, Azure Storage, etc. No need to manage credentials manually.
  identity {
    type = "SystemAssigned"
  }
}