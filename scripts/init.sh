#!/bin/bash
echo "[+] Initializing Vault..."
docker exec -it vault-1 vault operator init -key-shares=1 -key-threshold=1 > scripts/unseal_keys.txt

echo "[+] Unsealing Vault..."
UNSEAL_KEY=$(grep 'Unseal Key 1:' scripts/unseal_keys.txt | awk '{print $4}')
docker exec -it vault-1 vault operator unseal $UNSEAL_KEY

