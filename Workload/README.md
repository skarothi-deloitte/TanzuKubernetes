
# Configuring Azure backend for the terraform state file 
# Provide your environment specific variable values in this backend block
# Save this file in a given directory with backend.tf (or) with any specific name as per your orginzations standards. 

# terraform init
# terraform apply


terraform {
  backend "azurerm" {
    resource_group_name  = "AZ_Resource_Group_Name"
    storage_account_name = "storagexxxxxx"
    container_name       = "dev2021"
    key                  = "clusterxxxx.tfstate"
  }
}



# Use following module for creating workload cluster in TKG
# provide your environment specific variable values for the resources
# Save this file in a given directory with env_name.tf (or) with any specific name as per your orginzations standards. 

module "WLC" {
  source = "location of your git repo"
  # example: source = "git::https://github.com/TanzuKubernetes.git//Workload"

  config_path              = "~/.kube/config"
  subscription_id          = "AZ subscription ID"
  tenant_id                = "AZ tenant ID"
  Tanzu_Kubernetes_Cluster = "dev3"
  Tanzu_Namespace          = "dev"
  VM_Version               = "v1.18.5+vmware.1-tkg.1.c40d30d"
  Network_Name             = "antrea"
  VM_Class                 = "best-effort-xsmall"
  ControlPlane_Count       = 1
  Workers_Count            = 2
  Storage_Class            = "pp-storage-policy"
  Pod_CIDR                 = "193.0.2.0/16"
  ServiceDomain_CIDR       = "195.51.100.0/12"


}

