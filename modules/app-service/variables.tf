variable "azure_app_service_plan_name" {
  description = "The name of the Azure App Service Plan."
  type        = string
}

variable "azure_location" {
  description = "The Azure location to deploy the resources."
  type        = string
  default     = "East US"
}

variable "azure_resource_group" {
  description = "The name of the Azure resource group."
  type        = string
}

variable "azure_app_service_os_kind" {
  description = "The kind of operating system for the Azure App Service."
  type        = string
  default     = "Linux"
}

variable "azure_app_service_reserved_instance" {
  description = "Whether the App Service Plan is a reserved instance."
  type        = bool
  default     = false
}
