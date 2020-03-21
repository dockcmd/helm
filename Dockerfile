FROM alpine:3.11.2

ARG HELM=v3.1.2

RUN apk add --update --no-cache curl ca-certificates && \
    curl -L https://get.helm.sh/helm-${HELM}-linux-amd64.tar.gz | tar xvz && \
    mv linux-amd64/helm /usr/bin/helm && \
    chmod +x /usr/bin/helm && \
    rm -rf linux-amd64 && \
    apk del curl && \
    rm -f /var/cache/apk/*

ENV HOME=/home

VOLUME home/.cache
VOLUME home/.config

ENTRYPOINT ["helm"]