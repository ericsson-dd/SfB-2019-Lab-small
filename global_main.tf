# Create Ressource Group for SfB 2019 Lab Small without hybrid identiy, external access, 
resource "azurerm_resource_group" "sfb2019-lab-small-rg" {
  name     = "sfb2019-lab-small-rg"
  location = "West Europe"
}

# Call network module
module "network" {
  source = "./network"
}
