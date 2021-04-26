provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

provider "kubernetes-alpha" {
  config_path = var.config_path    // path to kubeconfig

}
