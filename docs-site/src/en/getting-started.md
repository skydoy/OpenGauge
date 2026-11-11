# Getting started

For the demo you need **one gateway** and **at least one display**, all flashed from the **same version**.

## You need

- A **gateway**: a [LILYGO T-2CAN-FD](boards/t2canfd.md) or a [generic ESP32 board](boards/esp32.md)
- One or more **displays**: [M5Stack M5 Dial v1.1](boards/m5dial.md) or [Elecrow CrowPanel 1.28″](boards/crowpanel.md)
- A computer with **Chrome** or **Edge** (phones, Safari and Firefox don't work)
- A USB **data** cable (many cables only charge)

For the demo you **don't need** a car, an ECU or a CAN connection: the gateway generates simulated data.

## Boards at a glance

| Board | Role | Chip | Status |
|---|---|---|---|
| [LILYGO T-2CAN-FD](boards/t2canfd.md) | Gateway | ESP32-S3 | Builds · bench simulator · not tested on hardware |
| [ESP32 board (e.g. ESP32 DevKit)](boards/esp32.md) | Gateway | ESP32 | Builds · bench simulator |
| [M5Stack M5 Dial v1.1](boards/m5dial.md) | 240×240 display (pilot) | ESP32-S3 | Builds · not tested on hardware |
| [Elecrow CrowPanel 1.28″](boards/crowpanel.md) | 240×240 display | ESP32-S3 | Builds · not tested on hardware |

A board only counts as supported once it is confirmed on hardware.

## Next

1. [Install](install.md): the gateway first, then each display
2. Power the boards over USB, close to each other
3. The display moves from the pairing screen to the gauge once it receives valid data ([How it works](how-it-works.md))
