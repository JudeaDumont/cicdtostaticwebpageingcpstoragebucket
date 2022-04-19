#resource "google_project_iam_policy" "iam_access_project_policy" {
#  project     = var.project
#  policy_data = data.google_iam_policy.iam_access.policy_data
#}

resource "google_project_iam_binding" "storage_object_access" {
  project = var.project
  role    = "roles/storage.objectViewer"

  members = [
    "user:343129465024@cloudbuild.gserviceaccount.com",
  ]
}

#resource "google_project_iam_policy" "iam_access_project_policy" {
#  project     = var.project
#  policy_data = data.google_iam_policy.iam_access.policy_data
#}