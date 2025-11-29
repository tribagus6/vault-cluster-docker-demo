echo "[+] Unsealing Vault-1..."
UNSEAL_KEY=$(grep 'Unseal Key 1:' scripts/unseal_keys.txt | awk '{print $4}' | sed 's/\x1b\[[0-9;]*m//g' | tr -d '\r' | tr -d '\n' | tr -d '[:space:]')
docker exec -it vault-1 vault operator unseal "$UNSEAL_KEY"

echo "[+] Unsealing Vault-2..."
docker exec -it vault-2 vault operator unseal "$UNSEAL_KEY"

echo "[+] Unsealing Vault-3..."
docker exec -it vault-3 vault operator unseal "$UNSEAL_KEY"
