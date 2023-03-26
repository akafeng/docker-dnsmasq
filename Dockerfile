FROM debian:bullseye-slim

RUN set -eux \
    && apt-get update -qyy \
    && apt-get install -qyy --no-install-recommends --no-install-suggests \
        dnsmasq \
    && rm -rf /var/lib/apt/lists/* /var/log/*

EXPOSE 53/tcp
EXPOSE 53/udp 
EXPOSE 67/udp

ENTRYPOINT ["/usr/sbin/dnsmasq"]
CMD ["--keep-in-foreground"]