variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default     = "gcp-project-468305"
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "Name of the GCS bucket"
  type        = string
  default     = "mydeen-terraform-bucket-demo"
}

variable "bucket_location" {
  description = "Bucket location (region or multi-region)"
  type        = string
  default     = "US"
}
