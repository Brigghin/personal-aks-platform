output "eso_client_id" {
  value = module.eso_identity.uai_client_id
}

output "eso_principal_id" {
  value = module.eso_identity.uai_principal_id
}

output "keyvault_uri" {
  value = module.kv.vault_uri
}