data "google_iam_policy" "all_users_can_view_website" {
  binding {
    role    = "roles/storage.objectViewer"
    members = ["allUsers"]
  }
}