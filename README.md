# 🛡️ Vault HA Cluster Demo using Docker Compose

This repo demonstrates a **3-node HashiCorp Vault Enterprise Cluster** using **Raft for high availability** — built for **training, portfolio, and interviews**.

---

## 🚀 Features

| Feature | Status |
|---------|--------|
| Vault Enterprise 1.18 | ✔️ |
| Raft Storage Backend | ✔️ |
| Leader/Follower Demo | ✔️ |
| Failover Test | ✔️ |
| Init + Unseal Script | ✔️ |
| Join Nodes to Raft | ✔️ |
| GitHub Ready | ✔️ |
| TLS (Optional) | 🔜 |
| Auto-Unseal Using KMS (AWS/GCP) | 🔜 |

---

## 📦 Getting Started

```bash
git clone https://github.com/tribagus6/vault-cluster-docker-demo.git
cd vault-cluster-docker-demo
docker compose up -d
chmod +x scripts/*


## Initialize Vault
```bash
./scripts/init.sh
./scripts/raft-join.sh


## 🧪 HA Failover Test
```bash
./scripts/failover-test.sh

