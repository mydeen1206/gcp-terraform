# Terraform Settings Block
terraform {
  required_version = ">= 1.9"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 6.0.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-state-mydeen"
    prefix = "statefiles/bucket"
  }  
}

# Terraform Provider Block
provider "google" {
  project = "gcp-project-468305"
  region = "us-central1"
}

resource "google_storage_bucket" "gcp_bucket" {
  name          = var.bucket_name
  location      = var.bucket_location
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}
