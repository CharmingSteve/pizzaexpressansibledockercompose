resource "google_service_account" "this" {
  project = var.project_id

  account_id   = "project-service-account"
  display_name = "Service Account"
}
