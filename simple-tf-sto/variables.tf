variable "location" {
  description = "Azure region for resource deployment"
  type        = string
  default     = "uksouth"
}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
}
