output "bucket_name" {
  description = "The name of the GCS bucket"
  value       = google_storage_bucket.gcp_bucket.name
}

output "bucket_url" {
  description = "The URL of the GCS bucket"
  value       = "https://console.cloud.google.com/storage/browser/${google_storage_bucket.gcp_bucket.name}"
}

output "bucket_location" {
  description = "The location where the bucket is hosted"
  value       = google_storage_bucket.gcp_bucket.location
}

output "bucket_self_link" {
  description = "The self link of the GCS bucket"
  value       = google_storage_bucket.gcp_bucket.self_link
}
