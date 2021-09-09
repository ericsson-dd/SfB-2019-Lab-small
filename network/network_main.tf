resource "azurerm_virtual_network" "vnet-01-sfb2019-lab-small" {
  name                = "vnet-01-sfb2019-lab-small"
  location            = azurerm_resource_group.rg-sfb2019-lab-small.location
  resource_group_name = azurerm_resource_group.rg-sfb2019-lab-small.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "snet-01-sfb2019-lab-small"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "snet-02-sfb2019-lab-small"
    address_prefix = "10.0.2.0/24"
  }

  tags = {
    environment = "sfb2019-lab-small"
  }
}