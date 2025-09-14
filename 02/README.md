# Raft Demo

## Prerequisites

- Hashicorp Vault

## Setup

Create each node directory and initialize the vault.

```bash
mkdir node1-data node2-data node3-data
```

Initialize the first node
```bash
vault server -config=config-raft-node1.hcl 
```

```bash
vault operator init
```
Store the unseal keys and root token in a safe place for the demonstration purposes only.

Unseal the first node
```bash
vault operator unseal <unseal-key>
```

```bash
vault login
```

Repeat the same for the second and third nodes.

