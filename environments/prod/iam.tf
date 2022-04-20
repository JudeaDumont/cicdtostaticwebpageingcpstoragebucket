resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.web_bucket.name
  role = "roles/storage.objectViewer"
  members = [
    "allUsers",
  ]
}

resource "google_project_iam_binding" "cloud_build_access_to_iam" {
  project = var.project
  role    = "roles/storage.objectAdmin"

  members = [
    "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
  ]
}