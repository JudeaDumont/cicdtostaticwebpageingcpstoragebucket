#resource "google_project_iam_policy" "project" {
#  project     = var.project
#  policy_data = data.google_iam_policy.editor_access.policy_data
#}
#
#data "google_iam_policy" "editor_access" {
#  binding {
#    role = "roles/editor"
#
#    members = [
#      "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
#    ]
#  }
#}
#
#data "google_iam_policy" "storage_object_access" {
#  binding {
#    role = "roles/storage.objectViewer"
#
#    members = [
#      "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
#    ]
#  }
#}
