# Elecrow CrowPanel 1.28″

![CrowPanel 1.28″ illustration](../assets/boards/board-crowpanel128.svg){ .og-board }

Elecrow's round rotary display (*CrowPanel 1.28inch HMI ESP32 Rotary Display*). Status: **builds; not tested on hardware**.

| Item | Value |
|---|---|
| SoC | ESP32-S3R8 (8 MB PSRAM) |
| Flash | 16 MB |
| Screen | 1.28″ round IPS, 240×240 (GC9A01) |
| Touch | CST816D |
| Power | 5 V over USB-C (no 12 V input) |

Open Gauge does not use the board's encoder, button or LEDs.

Source: [Elecrow wiki](https://www.elecrow.com/wiki/CrowPanel_1.28inch-HMI_ESP32_Rotary_Display.html).

## Install

In the [web installer](https://skydoy.github.io/OpenGauge/) choose **Display → CrowPanel 1.28″**, after flashing the gateway from the same version.

## To be validated on hardware

- Image orientation, colour order and inversion
- Touch axes
- Backlight without flicker
