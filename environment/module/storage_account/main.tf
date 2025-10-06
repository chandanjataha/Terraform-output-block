resource "azurerm_storage_account" "stg" {
  name                     = var.stg_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

variable "stg_name" {}
variable "resource_group_name" {}
variable "location" {}

output "container_id" {
  value = azurerm_storage_account.stg.id
  description = "ye storage account ka id hai"
  
}
