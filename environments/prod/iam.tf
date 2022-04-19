resource "google_project_iam_policy" "project" {
  project     = var.project
  policy_data = data.google_iam_policy.gcb_runs_tf_access.policy_data
}

data "google_iam_policy" "gcb_runs_tf_access" {
  binding {
    role = "roles/editor"

    members = [
      "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
    ]
  }
}

data "google_iam_policy" "gcb_runs_tf_access" {
  binding {
    role = "roles/storage.objectViewer"

    members = [
      "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
    ]
  }
}
