variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  default     = "Canada Central"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}