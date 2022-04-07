// Return 'true' or 'false' if set
locals {
  org_namespace    = var.new_org_namespace
  child_namespaces = var.child_namespaces
}

varable "new_org_namespace" {
    type = string
    default = "security_ops"
}

resource "vault_namespace" "secorg" {
  path = local.new_org_namespace
}
provider "vault" {
  alias     = "org"
  namespace = local.new_org_namespace
}
resource "vault_namespace" "child" {
  depends_on = [vault_namespace.org]
  for_each   = local.child_namespaces
  path       = each.key
  provider = vault.org
}