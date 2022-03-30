resource "vault_auth_backend" "gcp" {
    provider = vault.team1_namespace
    path = "gcp"
    type = "gcp"
    client_id = "108986691207062336156"
    private_key_id = "806f949f29c8069df40a131cba7d4f81402786d7"
    project_id = "hc-6eded284b47d419096eb99dd00f"
    client_email = "tf-test@hc-6eded284b47d419096eb99dd00f.iam.gserviceaccount.com"
}