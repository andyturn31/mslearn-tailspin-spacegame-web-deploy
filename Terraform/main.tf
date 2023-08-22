# Generate a random integer to create a globally unique name
resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

# Create the resource group
resource "azurerm_resource_group" "rg-uks" {
  name     = "rg-${random_integer.ri.result}tailspin-space-game"
  location = "uksouth"
}
# Create the Linux App Service Plan
resource "azurerm_app_service_plan" "appserviceplan-uks" {
  name                = "asp-${random_integer.ri.result}-tailspin-space-game"
  location            = azurerm_resource_group.rg-uks.location
  resource_group_name = azurerm_resource_group.rg-uks.name
  sku {
    tier = "Free"
    size = "F1"
  }
}

# Create the DEV web app, pass in the App Service Plan ID
resource "azurerm_app_service" "webapp-dev" {
  name                = "webapp-${random_integer.ri.result}-tailspin-space-game-DEV"
  location            = azurerm_resource_group.rg-uks.location
  resource_group_name = azurerm_resource_group.rg-uks.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan-uks.id

  site_config {
    dotnet_framework_version = "v6.0"
  }

}

# Create the STAGING web app, pass in the App Service Plan ID
resource "azurerm_app_service" "webapp-dev" {
  name                = "webapp-${random_integer.ri.result}-tailspin-space-game-STAGING"
  location            = azurerm_resource_group.rg-uks.location
  resource_group_name = azurerm_resource_group.rg-uks.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan-uks.id

    site_config {
    dotnet_framework_version = "v6.0"
  }

}