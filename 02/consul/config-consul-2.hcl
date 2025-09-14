# config-consul.hcl
storage "consul" {
 address = "127.0.0.1:8500"
 path = "vault"
}

listener "tcp" {
 address = "127.0.0.1:8202"
 tls_disable = true
}

api_addr = "http://127.0.0.1:8202"
ui = true