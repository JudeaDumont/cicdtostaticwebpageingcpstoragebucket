terraform {
  backend "gcs" {
    bucket = var.project + "-tfstate"
    prefix = "env/prod"
  }
}
