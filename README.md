<h1 align="center">Dnsmasq</h1>

<p align="center">Dnsmasq provides a DNS server, a DHCP server with support for DHCPv6 and PXE, and a TFTP server.</p>

<p align="center">
    <a href="https://ghcr.io/akafeng/dnsmasq">Container Registry</a> ·
    <a href="https://thekelleys.org.uk/dnsmasq/doc.html">Project Source</a>
</p>

<p align="center">
    <img src="https://img.shields.io/github/actions/workflow/status/akafeng/docker-dnsmasq/push.yml?branch=main" />
    <img src="https://img.shields.io/github/last-commit/akafeng/docker-dnsmasq" />
    <img src="https://img.shields.io/github/v/release/akafeng/docker-dnsmasq" />
    <img src="https://img.shields.io/github/release-date/akafeng/docker-dnsmasq" />
</p>

---

### Pull The Image

```bash
$ docker pull ghcr.io/akafeng/dnsmasq
```

### Start Container

```bash
$ docker run -d \
  -v /etc/dnsmasq.conf:/etc/dnsmasq.conf \
  --cap-add=NET_ADMIN \
  --network=host \
  --restart=always \
  --name=dnsmasq \
  ghcr.io/akafeng/dnsmasq
```
