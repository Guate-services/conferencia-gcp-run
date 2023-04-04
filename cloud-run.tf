resource "google_cloud_run_service" "default" {
  name     = "pubsub-tutorial"
  location = "us-central1"
  template {
    spec {
      containers {
        image = "gcr.io/rosy-timer-381919/pubsub"
      }
    }
  }
  traffic {
    percent         = 100
    latest_revision = true
  }
}
