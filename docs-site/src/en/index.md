---
title: Home
hide:
  - toc
---

# Open Gauge

![Open Gauge](assets/img/logo-light.svg#only-light){ .og-hero-logo }
![Open Gauge](assets/img/logo-dark.svg#only-dark){ .og-hero-logo }

**Wireless digital gauges for your car, built on ESP32.** A **gateway** reads the ECU data from the CAN bus and sends it over ESP-NOW to one or more **round displays**. No phone, account or internet connection is needed.

<div class="hero-install" markdown="1">
[⚡ Open the web installer](https://skydoy.github.io/OpenGauge/){ .md-button .md-button--primary }
</div>

!!! warning "Demo images · bench only"
    The published images are in development and **not tested on hardware**. The gateway runs the **bench simulator**: it sends simulated data and **does not read the CAN bus**. Do not install it in a car. See [Demo images](demo.md).

- **CAN read-only:** the gateway's CAN controller runs in *listen-only* mode, so it never transmits on the car's bus.
- **Signed data (ECDSA P-256):** every packet is signed by the gateway, and each display checks the signature before showing the values.

## Start here

1. [Getting started](getting-started.md) — what you need
2. [Install](install.md) — flash the gateway and the displays
3. [How it works](how-it-works.md) — gateway, ESP-NOW and signatures
4. [Boards](boards/index.md) — LILYGO T-2CAN-FD, ESP32, M5 Dial, CrowPanel

Also: [CAN and ECUs](can.md) · [Releases and files](releases.md) · [Troubleshooting](troubleshooting.md) · [FAQ](faq.md) · [Security](security.md) · [Licence & credits](licence.md)
