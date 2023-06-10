# provider.tf
provider "google" {
  user_project_override = true
  billing_project       = var.billing_project
  project               = var.project
}