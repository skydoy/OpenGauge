# M5Stack M5 Dial v1.1

![M5 Dial illustration](../assets/boards/board-m5dial.svg){ .og-board }

The **pilot board** for the display: used for development and on the bench. Status: **builds; not tested on hardware**.

| Item | Value |
|---|---|
| SoC | ESP32-S3FN8 (8 MB flash, no PSRAM) |
| Screen | 1.28″ round TFT, 240×240 (GC9A01) |
| Touch | FT3267 |
| USB | USB-C (ESP32-S3 native USB) |

Open Gauge does not use the M5 Dial's rotary encoder or button.

There is an older revision (the original Dial, K130, now discontinued) and the **Dial v1.1 (K130-V11)**. The pins are the same. Source: [M5Stack Dial v1.1 documentation](https://docs.m5stack.com/en/core/Dial_v1.1).

## Install

In the [web installer](https://skydoy.github.io/OpenGauge/) choose **Display → M5Stack M5 Dial**, after flashing the gateway from the same version.
