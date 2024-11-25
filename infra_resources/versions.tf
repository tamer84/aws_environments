terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.74.0"
    }
    external = {
      source  = "hashicorp/external"
      version = "~> 2.3.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.5"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.16.1"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "16.11.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.33.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
    grafana = {
      source  = "grafana/grafana"
      version = ">= 2.13.0"
    }
  }
  required_version = ">= 1.5.0, < 2.0.0"
}