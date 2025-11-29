ui = true
disable_mlock = true

storage "raft" {
  path = "/opt/vault/data"
  node_id = "vault-1"
  retry_join {
    leader_api_addr = "http://vault-1:8200"
  }
  retry_join {
    leader_api_addr = "http://vault-2:8200"
  }
  retry_join {
    leader_api_addr = "http://vault-3:8200"
  }
}

api_addr = "http://vault-1:8200"
cluster_addr = "http://vault-1:8201"
cluster_name = "cluster-docker"
log_level = "Debug"

listener "tcp" {
  address = "vault-1:8200"
  tls_disable = 1
  #tls_cert_file = "/etc/vault.d/cert.crt"
  #tls_key_file = "/etc/vault.d/private.key"
}

# Uncomment the following line if you're using Vault Enterprise:
license_path = "/etc/vault.d/vault.hclic"

