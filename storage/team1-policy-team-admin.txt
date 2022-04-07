resource "vault_policy" "team1_admin" {
  provider = vault.team1_namespace
  name = "team1-admin"

  policy = <<EOT
##################
### TEAM ADMIN ###
##################

# Manage namespaces
path "enablement/team1/namespaces/*" {
   capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage policies
path "enablement/team1/policies/acl/*" {
   capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List policies
path "enablement/team1/policies/acl" {
  capabilities = ["list"]
}

# Enable and manage secrets engines
path "enablement/team1/mounts/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}

# List available secrets engines
path "enablement/team1/mounts" {
  capabilities = [ "read" ]
}

# Manage secrets at 'team-secret'
path "enablement/team1/team-secret/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}
EOT
}