resource "google_storage_bucket" "imageproc_input" {
  name     = "input-bucket-tech-community"
  location = local.region
}

output "input_bucket_name" {
  value = google_storage_bucket.imageproc_input.name
}

resource "google_storage_bucket" "imageproc_output" {
  name     = "output-bucket-tech-community"
  location = local.region
}

output "blurred_bucket_name" {
  value = google_storage_bucket.imageproc_output.name
}
