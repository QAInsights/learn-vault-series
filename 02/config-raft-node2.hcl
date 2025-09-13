# config-raft.hcl

# Raft storage is built-in
storage "raft" {
  path    = "./node2-data"
  node_id = "node2"

  // Tell this node how to find the first node to join the cluster
  retry_join {
    leader_api_addr = "http://127.0.0.1:8200"
  }
}

# Listener for this node
listener "tcp" {
  address     = "127.0.0.1:8202"
  tls_disable = "true"
}

# API and Cluster addresses are crucial for HA
api_addr     = "http://127.0.0.1:8202"
cluster_addr = "http://127.0.0.1:8203"
ui           = true

