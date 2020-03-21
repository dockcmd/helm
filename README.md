# Helm

Creates an alpine linux image that just includes Helm for use as a docker command.

## Build

```bash
docker build --build-arg HELM=v3.1.2 -t dcmd/helm:v3.1.2 .
```

## Shln

```bash
shln install github.com/dockcmd/helm-sh v0.0.1
```
