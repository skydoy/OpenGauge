# Generic ESP32

![ESP32 gateway illustration](../assets/boards/board-gateway.svg){ .og-board }

Any **ESP32** board (for example an ESP32 DevKit) with an **external 3.3 V CAN transceiver** (for example an SN65HVD230). Status: **builds; image with the bench simulator**.

## Transceiver wiring

| Signal | ESP32 GPIO |
|---|---|
| CAN TX → transceiver TXD | **5** |
| CAN RX ← transceiver RXD | **4** |
| 3.3 V and GND | board 3V3 and GND |

The TWAI controller always runs in **listen-only**. In the demo images the CAN bus is not read.

## Install

In the [web installer](https://skydoy.github.io/OpenGauge/) choose **Gateway → Generic ESP32**. If the board has a USB-serial chip (CP210x, CH340/CH9102), install its driver ([Install](../install.md#board-not-showing-up)).
