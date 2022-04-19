terraform {
  backend "gcs" {
    bucket = "tf-state"
    prefix = "env/prod"
    depends_on = [google_storage_bucket.tf-state]
  }
}
