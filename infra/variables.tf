variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  type    = string
  default = "Canada Central"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "aks_name" {
  description = "Name of the Azure Kubernetes Service cluster"
  type        = string
}

