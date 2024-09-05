# Single-Container Signal TLS Proxy

A Signal TLS proxy implemented as a single container using Traefik. Based on https://github.com/signalapp/Signal-TLS-Proxy

## Running

To run this directly using podman/docker:
```sh
podman run --rm -v ./cert_data:/acme -p 443:443 -e SIGNALPROXY_HOSTNAME=myproxy.example.com -e SIGNALPROXY_PROD_ACME=1 ghcr.io/computator/signal-proxy
```

`SIGNALPROXY_PROD_ACME` must be set to use the production Let's Encrypt ACME server instead of the staging one
