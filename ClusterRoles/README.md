# This is used for creating the Kubernetes Cluster roles after the Tanzu workload cluster is created


#Usage: The following module has to be used for creating Namespace in the TKG Workload cluster.
# terraform init
# terraform apply

module "CR" {
  source = "git::https://github.com/skarothi-deloitte/TanzuKubernetes.git//ClusterRoles"
}


