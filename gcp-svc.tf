// GCP Test Account (5)
resource "google_service_account" "tf_test" {
  account_id   = "tf-test"
  display_name = "tf-test"
}

variable "google_service_account_iam_roles" {
  type        = list(string)
  description = "List of IAM roles to give to service account"
  default = [
    "roles/iam.securityAdmin",
    "roles/iam.securityReviewer",
    "roles/resourcemanager.projectIamAdmin",
    "iam.serviceAccounts.get",
    "iam.serviceAccountKeys.get"
  ]
}

resource "google_project_iam_member" "vault_iam" {
  for_each = toset(var.google_service_account_iam_roles)

  project = "hc-6eded284b47d419096eb99dd00f"
  role    = each.value
  member  = format("serviceAccount:%s", google_service_account.tf_test.email)
}
