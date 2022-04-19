////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Separate buckets because of separate settings
// tf state has versioning, web does not, we don't want GCP driving costs up for something that is done by git
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource "google_storage_bucket" "tf-state" {
  name          = "tf-state"
  location      = "US"
  force_destroy = true
  project       = var.project

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      age = 30 //days
    }
    action {
      type = "Delete"
    }
  }
  #depends_on = [data.google_iam_policy.storage_object_access]
}

resource "google_storage_bucket" "web" {
  name          = "web"
  location      = "US"
  force_destroy = true
  project       = var.project
  #depends_on = [data.google_iam_policy.storage_object_access]
}