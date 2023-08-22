terraform {

  backend "azurerm" {
    resource_group_name = "kopicloud-tstate-rg"
    storage_account_name = "kopicloudtfstate28740"
    container_name = "tfstate"
    key = "terraform.tfstate"
    access_key = "OGpuzbu9o/USKLa7W1vmTj5t2rlhO7JM4OXLxz5To5bYxL9t069kDpedE8UU8hjl7i2yruK6odNZnAWQflStgA=="
  }
}
