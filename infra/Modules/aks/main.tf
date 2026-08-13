resource "azurerm_kubernetes_cluster" "this" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "personalwebsite"

  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  default_node_pool {
    name       = "system"
    node_count = 1
    vm_size    = "Standard_B2ps_v2"
    upgrade_settings {
        max_surge = "10%"
    }
  }

  identity {
    type = "SystemAssigned"
  }
}