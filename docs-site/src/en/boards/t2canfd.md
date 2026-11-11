# LILYGO T-2CAN-FD

![LILYGO T-2CAN-FD illustration](../assets/boards/board-t2canfd.svg){ .og-board }

Gateway with an **ESP32-S3** and **two isolated CAN channels**. Status: **builds; not tested on hardware**.

!!! warning "Don't mix them up"
    This is the **T-2CAN-FD**, not the original T-2CAN (V1.0, with an MCP2515), which needs incompatible firmware.

## The two CAN channels

| Channel | Controller | In Open Gauge |
|---|---|---|
| **CAN B** | ESP32-S3 native TWAI (classic CAN 2.0) | **Used**, listen-only, on GPIO **7 (TX)** and **6 (RX)** |
| **CAN A** | MCP2518FD over SPI (CAN FD) | **Not implemented yet**: the chip is always deselected (CS on GPIO 10 held HIGH) |

Connect the bus to **CAN B**. CAN A (CAN FD) is left for a future version.

!!! info "In the demo images"
    The gateway runs the bench simulator: it **reads no real frames**, not even on CAN B. See [Demo images](../demo.md).

## Hardware

| Item | Value |
|---|---|
| Module | ESP32-S3-WROOM-1U: 16 MB flash, 8 MB PSRAM, external antenna (U.FL) |
| USB | USB-C wired to the ESP32-S3 native USB (no USB-serial chip, no driver) |
| Transceivers | isolated on both channels |
| Power | 2-pin terminal, or 5 V over USB-C |
| Console | over USB-C |

Official sources: [LILYGO T-2Can repository](https://github.com/Xinyuan-LilyGO/T-2Can) and [LILYGO T-2Can-FD wiki](https://wiki.lilygo.cc/products/industrial-series/t-2can-fd/).

## Install

In the [web installer](https://skydoy.github.io/OpenGauge/) choose **Gateway → LILYGO T-2CAN-FD**. If flashing fails, hold **BOOT**, press **RST**, and try again.

## To be validated on hardware

- Flashing from the web installer and the console over USB-C
- Reception on CAN B in listen-only at all four speeds
- Confirm CAN A stays silent (no ACK or error frames)
- 120 Ω termination on each channel
- Power from the car's 12 V
