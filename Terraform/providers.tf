terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
/*    backend "azurerm" {
    resource_group_name = "kopicloud-tstate-rg"
    storage_account_name = "kopicloudtfstate28740"
    container_name = "tfstate"
    key = "terraform.tfstate"
    access_key = "OGpuzbu9o/USKLa7W1vmTj5t2rlhO7JM4OXLxz5To5bYxL9t069kDpedE8UU8hjl7i2yruK6odNZnAWQflStgA=="
  } */
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}