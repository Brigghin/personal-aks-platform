output "resource_group_name" {
  value = azurerm_resource_group.main.name
}
output "acr_name" {
  value = azurerm_container_registry.main.name
}
output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}
output "aks_id" {
  value = azurerm_kubernetes_cluster.aks.id
}