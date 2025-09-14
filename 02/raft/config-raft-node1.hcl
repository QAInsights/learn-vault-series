# config-raft.hcl

# Raft storage is built-in
storage "raft" {
 path = "./node1-data"
 node_id = "node1"
}

# Listener for this node
listener "tcp" {
 address = "127.0.0.1:8200"
 tls_disable = true
}

# API and Cluster addresses are crucial for HA
api_addr = "http://127.0.0.1:8200"
cluster_addr = "http://127.0.0.1:8201"
ui = true

