# This is used for creating the Kubernetes Cluster roles after the Tanzu workload cluster is created


# Usage: The following module has to be used for creating Namespace in the TKG Workload cluster.
# Save this file in a given directory with clusterroles.tf (or) with any specific name as per your orginzations standards. 
# terraform init
# terraform apply

module "CR" {
  source = "git::https://github.com/skarothi-deloitte/TanzuKubernetes.git//ClusterRoles"
}


