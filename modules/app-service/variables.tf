variable "azure_service_plan_name" {
  description = "The name of the Azure Service Plan."
  type        = string
}

variable "azure_location" {
  description = "The Azure location to deploy the resources."
  type        = string
  # One of the regions that typically have more availability for free tier
  default = "Central US"
}

variable "azure_resource_group" {
  description = "The name of the Azure resource group."
  type        = string
}

variable "azure_service_os_type" {
  # The OS type for the App Service Plan. It can be either "Windows" or "Linux".
  description = "The type of operating system for the Azure App Service."
  type        = string
}

variable "azure_service_sku_name" {
  # The SKU name for the App Service Plan. It can be either "F1" (Free) or "B1" (Basic).
  description = "The SKU name for the Azure App Service."
  type        = string
}

variable "windows_web_app_name" {
  description = "The name of the Azure App Service."
  type        = string
}

variable "https_only" {
  description = "Whether to enforce HTTPS for the App Service."
  type        = bool
  default     = true
}