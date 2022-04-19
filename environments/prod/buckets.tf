////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Separate buckets because of separate settings
// tf state has versioning, web does not, we don't want GCP driving costs up for something that is done by git
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource "google_storage_bucket" "tfstatebucket" {
  name          = "ecstatic-effort-347701-tfstate"
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
  depends_on = [google_project_iam_binding.storage_object_access]
}

resource "google_storage_bucket" "web_bucket" {
  name          = "www.influencerwebsiteexample.com"
  location      = "US"
  force_destroy = true
  project       = var.project

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  depends_on = [google_project_iam_binding.storage_object_access]
}