resource "vault_gcp_auth_backend" "gcp" {
    provider = vault.team1_namespace
    path = "gcp"
    credentials  = ${var.G_CREDS}
}