variable "azure_location" {
  # One of the regions that typically have more availability for free tier
  default = "Central US"
}

variable "env_name" {
  default = "dev"  
}

variable "azure_app_service_plan_name" {
  default = "wnc-mess-app-service-plan"
}

variable "azure_app_service_name" {
  default = "wnc-mess-app-service"
}

variable "github_repo_url" {
  default = "https://github.com/WNCMESS/WESTERN-NAVAL-COMMAND-PROJECT.git"
}

variable "github_branch" {
  default = "main"
}

# variable "mysql_flexible_server_name" {
#   default = "wnc-mess-mysql-flex-server"
# }