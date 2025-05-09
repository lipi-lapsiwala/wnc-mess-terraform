# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Define HCL Cloud as a backend for Azure
terraform {
  backend "remote" {
    organization = "wnc-mess-terraform-backend"

    workspaces {
      name = "wnc-mess-terraform-backend"
    }
  }
}