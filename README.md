---
Helm
---

Creates an alpine linux image with just Helm. 

# Build

```bash
docker build --build-arg HELM=v3.1.2 -t dcmd/helm:v3.1.2 .
```

# Shln

```bash
shln install github.com/dockcmd/helm-sh v0.0.1
```