# Create Ressource Group for SfB 2019 Lab Small without hybrid identiy, external access
resource "azurerm_resource_group" "rg-sfb2019-lab-small" {
  name     = "rg-sfb2019-lab-small"
  location = "West Europe"
}

# Call network module
module "network" {
  source = "./network"
}
