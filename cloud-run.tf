resource "google_cloud_run_service" "default" {
  name     = "pubsub-tutorial"
  location = local.region
  template {
    spec {
      containers {
        image = "gcr.io/rosy-timer-381919/pubsub"
        env {
          name = "BLURRED_BUCKET_NAME"
          value = google_storage_bucket.imageproc_output.name
        }
      }
    }
  }
  traffic {
    percent         = 100
    latest_revision = true
  }
}
