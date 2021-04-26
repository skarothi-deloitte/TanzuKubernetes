provider "kubernetes-alpha" {
  config_path = "~/.kube/config" // path to kubeconfig

}
resource "kubernetes_manifest" "tanzukubernetes_workloadcluster" {
  provider = kubernetes-alpha
  manifest = {
    "apiVersion" = "run.tanzu.vmware.com/v1alpha1"
    "kind"       = "TanzuKubernetesCluster"
    "metadata" = {
      "name"      = var.Tanzu_Kubernetes_Cluster
      "namespace" = var.Tanzu_Namespace
    }
    "spec" = {
      "distribution" = {
        "version" = var.VM_Version
      }
      "settings" = {
        "network" = {
          "cni" = {
            "name" = var.Network_Name
          }
          "pods" = {
            "cidrBlocks" = [
              var.Pod_CIDR,
            ]
          }
          "serviceDomain" = "managedcluster.local"
          "services" = {
            "cidrBlocks" = [
              var.ServiceDomain_CIDR,
            ]
          }
        }
      }
      "topology" = {
        "controlPlane" = {
          "class"        = var.VM_Class
          "count"        = var.ControlPlane_Count
          "storageClass" = var.Storage_Class
        }
        "workers" = {
          "class"        = var.VM_Class
          "count"        = var.Workers_Count
          "storageClass" = var.Storage_Class
        }
      }
    }
  }
}
