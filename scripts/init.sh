#!/bin/bash
echo "[+] Initializing Vault..."
docker exec -it vault-1 vault operator init -key-shares=1 -key-threshold=1 > scripts/unseal_keys.txt
