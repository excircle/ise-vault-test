resource "vault_auth_backend" "gcp" {
    provider = vault.team1_namespace
    path = "gcp"
    type = "gcp"
    credentials  = var.G_CREDS
}