module "rg" {
  source              = "./Modules/rg"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  source              = "./Modules/acr"
  resource_group_name = module.rg.resource_group_name
  location            = var.location
  acr_name            = var.acr_name
}

module "aks" {
  source              = "./Modules/aks"
  resource_group_name = module.rg.resource_group_name
  location            = var.location
  aks_name            = var.aks_name
}

module "user_assigned_identity" {
  source              = "./Modules/uai"
  resource_group_name = module.rg.resource_group_name
  location            = var.location
  uai_name            = var.uai_name
}

module "role_assignment" {
  source               = "./Modules/ra"
  scope                = module.acr.acr_id
  role_definition_name = var.role_definition_name
  principal_id         = module.user_assigned_identity.uai_principal_id
}

data "azurerm_client_config" "current" {}

module "kv" {
  source              = "./Modules/kv"
  kv_name             = var.kv_name
  location            = var.location
  resource_group_name = module.rg.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
}

module "eso_identity" {
  source              = "./modules/uai"
  uai_name            = var.eso_name
  location            = var.location
  resource_group_name = module.rg.resource_group_name
}

resource "azurerm_role_assignment" "eso_keyvault" {
  scope                = module.kv.id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = module.eso_identity.uai_principal_id
}

resource "azurerm_federated_identity_credential" "eso" {
  name                = "eso-federation"
  resource_group_name = module.rg.resource_group_name
  parent_id           = module.eso_identity.uai_id

  audience = ["api://AzureADTokenExchange"]

  issuer = "https://canadacentral.oic.prod-aks.azure.com/b597579a-4f58-4ebd-bc64-52debecb380b/fdd0b8e9-16b7-4672-9964-4316b0c93ffb/"

  subject = "system:serviceaccount:external-secrets:external-secrets"
}