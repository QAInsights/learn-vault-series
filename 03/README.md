# Auth and Secrets Engine

> The default auth method, which is `token`, cannot be disabled.
> The default secrets engines, `identity`, `sys`, and `cubbyhole`, cannot be disabled.

```
vault auth list
```

```
vault secrets list
```

# Enable auth method
```
vault auth enable userpass
```

# Disable auth method
```
vault auth disable userpass
```

# Enable secrets engine
```
vault secrets enable -path=kvv2 kv-v2
```

# Disable secrets engine
```
vault secrets disable kvv2
```
