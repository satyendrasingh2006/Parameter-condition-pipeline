terraform {
  required_version = ">= 1.14.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
# # backend "azurerm" {
# #     resource_group_name  = "rg-huawei"
# #     storage_account_name = "stghuawei1"
# #     container_name       = "huaweicontainer"
# #     key                  = "rgs.tfstate"
# }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rgs" {
    name     = "test-1"
    location = "East US"
}

resource "azurerm_resource_group" "resource_group" {
    name     = "test-2"
    location = "East US"
}
