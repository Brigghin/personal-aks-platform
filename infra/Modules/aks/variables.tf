variable "aks_name" {
    description = "Name of the Azure Kubernetes Service cluster"
    type       = string
}

variable "location" {
    description = "Location of the Azure Kubernetes Service cluster"
    type       = string
}

variable "resource_group_name" {
    description = "Name of the resource group"
    type       = string
}
