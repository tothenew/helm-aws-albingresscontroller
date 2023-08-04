terraform {
  required_version = ">= 0.1.0"

  required_providers {
    aws        = ">= 3.72"
    helm       = ">= 1.0, < 3.0"
    kubernetes = ">= 1.10.0, < 3.0.0"
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"  ## update the kubeconfig path accordingly
  }
}