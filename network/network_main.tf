resource "azurerm_virtual_network" "sfb2019-lab-small-vnet-01" {
  name                = "sfb2019-lab-small-vnet-01"
  location            = azurerm_resource_group.sfb2019-lab-small-rg.location
  resource_group_name = azurerm_resource_group.sfb2019-lab-small-rg.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "sfb2019-lab-small-snet-01"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "sfb2019-lab-small-snet-02"
    address_prefix = "10.0.2.0/24"
  }

  tags = {
    environment = "sfb2019-lab-small"
  }
}