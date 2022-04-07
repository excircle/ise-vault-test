// Namespace - enablement
resource "vault_namespace" "enablement" {
  provider = vault.root_namespace
  path     = "enablement"
}

// Namespace - enablement/team2
resource "vault_namespace" "team2" {
  provider = vault.enablement_namespace
  path     = "team2"
}