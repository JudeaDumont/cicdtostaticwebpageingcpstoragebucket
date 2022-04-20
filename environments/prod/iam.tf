resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.web_bucket.name
  role = "roles/storage.objectViewer"
  members = [
    "allUsers",
  ]
  depends_on = [google_storage_bucket_iam_binding.cloud_build_access_to_iam]
}

resource "google_storage_bucket_iam_binding" "cloud_build_access_to_iam" {
  bucket = google_storage_bucket.web_bucket.name
  role    = "roles/storage.admin"

  members = [
    "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
  ]
}