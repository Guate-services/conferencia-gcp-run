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

data "google_storage_project_service_account" "gcs_account" {}

resource "google_pubsub_topic_iam_binding" "binding" {
  topic   = google_pubsub_topic.default.name
  role    = "roles/pubsub.publisher"
  members = ["serviceAccount:${data.google_storage_project_service_account.gcs_account.email_address}"]
}

resource "google_storage_notification" "notification" {
  bucket         = google_storage_bucket.imageproc_input.name
  payload_format = "JSON_API_V1"
  topic          = google_pubsub_topic.default.id
  depends_on     = [google_pubsub_topic_iam_binding.binding]
}
