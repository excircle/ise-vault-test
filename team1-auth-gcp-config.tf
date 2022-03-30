resource "vault_gcp_auth_backend_role" "gcp" {
    provider               = vault.team1_namespace
    backend                = vault_auth_backend.gcp.path
    type                   = "iam"
    project_id             = "hc-6eded284b47d419096eb99dd00f"
    bound_service_accounts = ["tf-test@hc-6eded284b47d419096eb99dd00f.iam.gserviceaccount.com"]
    token_policies         = ["team1-admin"]
}