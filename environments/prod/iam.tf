resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.web_bucket
  role = "roles/storage.objectViewer"
  members = [
    "allUsers",
  ]
}