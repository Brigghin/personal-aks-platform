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