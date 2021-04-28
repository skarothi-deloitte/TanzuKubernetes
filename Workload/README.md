
# Configuring Azure backend for the terraform state file 
# Provide your environment specific variable values in this backend block

terraform {
  backend "azurerm" {
    resource_group_name  = "AZRG-USE2-CON-SBXCHUBB-SBX-001"
    storage_account_name = "chubbtest1"
    container_name       = "dev2021"
    key                  = "dev3_cluster.tfstate"
  }
}


