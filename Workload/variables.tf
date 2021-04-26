// Tanzu cluster Variables
variable "Tanzu_Kubernetes_Cluster" {
  description = "Enter the 'Name' for Tanzu Kubernetes Cluster:"
  type        = string
  default = ""
}

variable "Tanzu_Namespace" {
  description = "Select the Namespace value in Tanzu Grid you want to deploy this kubernetes cluster:"
  type        = string
  default = ""
}


variable "VM_Version" {
  description = "Select the VM Version:"
  type        = string
  default = ""
  
}

variable "Network_Name" {
  description = "Enter the name for the network connection:"
  type        = string
  default = ""
}

variable "Pod_CIDR" {
  description = "Define the CIDR range for the PODS"
  type        = string
  default = ""
}

variable "ServiceDomain_CIDR" {
  description = "Define the CIDR range for the PODS"
  type        = string
  default = ""
}

variable "VM_Class" {
  description = "Select the VM Class type:"
  type        = string
  default = ""

}

variable "ControlPlane_Count" {
  description = "How many number of control planes you want?"
  type        = number
  default = 0
}


variable "Workers_Count" {
  description = "How many number of worker nodes you want?"
  type        = number
  default = 0
}

variable "Storage_Class" {
  description = "Enter the storage class value"
  type        = string
  default = ""
}

variable "subscription_id" {
  description = "Azure Subscription ID:"
  type        = string
  default     = "76d8ef1a-d633-49dc-addd-fd51b8ea9b2c"
}
variable "tenant_id" {
  description = "Azure Tenant ID:"
  type        = string
  default     = "36da45f1-dd2c-4d1f-af13-5abe46b99921"
}

