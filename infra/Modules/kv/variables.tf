variable "kv_name" {
    description = "Name of the Azure Key Vault"
    type       = string
}

variable "location" {
    description = "Location of the Azure Key Vault"
    type       = string
}

variable "resource_group_name" {
    description = "Name of the resource group"
    type       = string
}

variable "tenant_id" {
    description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault"
    type       = string
}
