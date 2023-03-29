terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project     = local.project_name
  region      = local.region
  zone        = local.zone
}

resource "google_pubsub_topic" "default" {
  name = "pubsub_topic"
}
