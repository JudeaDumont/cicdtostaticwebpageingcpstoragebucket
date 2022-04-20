resource "google_project_iam_binding" "storage_object_access" {
  project = var.project
  role    = "roles/storage.admin"

  members = [
    "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
  ]
}