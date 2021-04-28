
# Configuring Azure backend for the terraform state file 
# Provide your environment specific variable values in this backend block

terraform {
  backend "azurerm" {
    resource_group_name  = "AZ_Resource_Group_Name"
    storage_account_name = "storagexxxxxx"
    container_name       = "dev2021"
    key                  = "clusterxxxx.tfstate"
  }
}


