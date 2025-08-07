# Input Variables
# GCP Project
variable "gcp_project" {
  description = "Project in which GCP Resources to be created"
  type = string
  default = "gcp-project-468305"
}

# GCP Region
variable "gcp_region1" {
  description = "Region in which GCP Resources to be created"
  type = string
  default = "us-central1"
}