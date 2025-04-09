variable "azure_location" {
  # One of the regions that typically have more availability for free tier
  default = "Central US"
}

variable "azure_app_service_plan_name" {
  default = "wnc-mess-app-service-plan"
}

variable "azure_app_service_name" {
  default = "wnc-mess-app-service"
}