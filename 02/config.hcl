# Store the Vault data in a file on the local filesystem.
storage "file" {
  path = "/Users/naveenkumar/vault/data000"
}

# Listen for connections on localhost port 8200.
# We're disabling TLS here for simplicity.
# NEVER do this in a real production environment.
listener "tcp" {
  address     = "127.0.0.1:8200"
  tls_disable = "true"
}

# Enable UI
ui = true
