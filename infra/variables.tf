variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "location" {
  description = "Location of the Azure Container Registry"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "aks_name" {
  description = "Name of the Azure Kubernetes Service cluster"
  type        = string
}

variable "uai_name" {
  description = "Name of the user-assigned identity"
  type        = string
}

variable "role_definition_name" {
  description = "Name of the role definition"
  type        = string
}

variable "kv_name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "eso_name" {
  description = "Name of the Eso Uai"
  type        = string
}
