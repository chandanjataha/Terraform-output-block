module "md-rg" {
  source   = "../module/resource_group"
  rg_name  = "chandanrg"
  location = "westus"
}
module "md-storage" {
  depends_on = [ module.md-rg ]
  source              = "../module/storage_account"
  stg_name            = "storageqwer"
  resource_group_name = "chandanrg"
  location            = "WestUS"
}
module "md-container" {
depends_on = [ module.md-storage ]

  source             = "../module/storage_container"
  container_name     = "tfstatecontainer"
  storage_account_id = module.md-storage.container_id

}
output "container_id" {
  value = "this is output of output block in module print"
  description = "ye storage account ka id hai"
  
}

