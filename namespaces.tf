// Root namespace - enablement
resource "vault_namespace" "enablement" {
  provider = vault.root_namespace
  path     = "enablement"
}