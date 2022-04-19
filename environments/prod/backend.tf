terraform {
  backend "gcs" {
    bucket = "tf-state"
    prefix = "env/prod"
  }
}
