#!/bin/bash
echo "[+] Checking current leader..."
docker exec -it vault-1 vault status

echo "[+] Stopping leader (vault-1)..."
docker stop vault-1

echo "[+] Checking follower for leadership..."
docker exec -it vault-2 vault status

