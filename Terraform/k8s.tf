resource "azurerm_kubernetes_cluster" "kubernetes_cluster" {
  name                = "aks-cluster-suicide-squad"
  location            = data.azurerm_resource_group.existing.location
  resource_group_name = data.azurerm_resource_group.existing.name
  dns_prefix          = "aks-cluster-suicide-squad"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
