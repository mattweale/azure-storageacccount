terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-permanent"
    storage_account_name = "mrwterraformstate"
    container_name       = "terraform-state"
    key                  = "terraform-state-azure-nebula"
  }
}

provider "azurerm" {
  features {}
}