resource "google_project_iam_policy" "project" {
  project     = var.project
  policy_data = data.google_iam_policy.gcb-runs-tf.policy_data
}

data "google_iam_policy" "gcb-runs-tf" {
  binding {
    role = "roles/editor"

    members = [
      "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
    ]
  }
}
