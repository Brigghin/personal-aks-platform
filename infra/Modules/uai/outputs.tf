output "uai_principal_id" {
  value = azurerm_user_assigned_identity.this.principal_id
}

output "uai_client_id" {
  value = azurerm_user_assigned_identity.this.client_id
}

output "uai_id" {
  value = azurerm_user_assigned_identity.this.id
}