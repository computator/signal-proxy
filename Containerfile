FROM docker.io/library/traefik:v3.2

LABEL org.opencontainers.image.source=https://github.com/computator/signal-proxy

COPY traefik*.yaml ./

VOLUME /acme
ENV SIGNALPROXY_HOSTNAME=*
EXPOSE 443
