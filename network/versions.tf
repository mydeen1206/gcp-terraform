# Terraform Settings Block
terraform {
  required_version = ">= 1.9"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 6.46.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-state-mydeen"
    prefix = "statefiles/network"
  }  
}

# Terraform Provider Block
provider "google" {
  project = var.gcp_project
  region = var.gcp_region1
}