resource "google_project_iam_binding" "storage_object_viewers" {
  project = var.project
  role    = "roles/storage.objectViewer"

  members = [
    "user:allUsers",
  ]
}