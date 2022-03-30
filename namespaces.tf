// Namespace - enablement
resource "vault_namespace" "enablement" {
  provider = vault.root_namespace
  path     = "enablement"
}

// Namespace - enablement/team1
resource "vault_namespace" "team1" {
  provider = vault.enablement_namespace
  path     = "team1"
}