# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "main-rg"
    storage_account_name = "gggtestterradevops"
    container_name       = "tfstate"
    key                  = "testing.tfstate"
  }
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "Test-Terraform"
  location = "West Europe"
}

