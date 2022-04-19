resource "google_project_iam_policy" "iam_access_project_policy" {
  project     = var.project
  policy_data = data.google_iam_policy.iam_access.policy_data
}

resource "google_project_iam_policy" "editor_access_project_policy" {
  project     = var.project
  policy_data = data.google_iam_policy.editor_access.policy_data
  depends_on = [google_project_iam_policy.iam_access_project_policy]
}

resource "google_project_iam_policy" "storage_object_access_project_policy" {
  project     = var.project
  policy_data = data.google_iam_policy.storage_object_access.policy_data
  depends_on = [google_project_iam_policy.iam_access_project_policy]
}

data "google_iam_policy" "iam_access" { //necessary for setting IAM from cloud build user
  binding {
    role = "roles/resourcemanager.projectIamAdmin"

    members = [
      "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
    ]
  }
}

data "google_iam_policy" "editor_access" {
  binding {
    role = "roles/editor"

    members = [
      "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
    ]
  }
}

data "google_iam_policy" "storage_object_access" {
  binding {
    role = "roles/storage.objectViewer"

    members = [
      "serviceAccount:343129465024@cloudbuild.gserviceaccount.com",
    ]
  }
}
