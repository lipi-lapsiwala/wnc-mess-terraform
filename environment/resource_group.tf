resource "azurerm_resource_group" "wnc_mess"{
  name     = "wnc-mess"
  location = var.azure_location
  tags = {
    environment = "wnc-mess"
    created_by  = "wnc-mess-terraform"
  }
}