echo "[+] Unsealing Vault-2..."
UNSEAL_KEY=$(grep 'Unseal Key 1:' scripts/unseal_keys.txt | awk '{print $4}')
docker exec -it vault-2 vault operator unseal $UNSEAL_KEY

echo "[+] Unsealing Vault-3..."
docker exec -it vault-3 vault operator unseal $UNSEAL_KEY
