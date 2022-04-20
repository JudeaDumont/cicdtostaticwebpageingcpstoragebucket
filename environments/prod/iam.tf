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
  role    = "roles/storage.legacyBucketOwner" //this needs to be refactored to have only the permissions it needs

  members = [
    "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
    "user:dumontjudea3@gmail.com"
  ]
}