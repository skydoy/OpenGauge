# CAN and ECUs

!!! warning "The demo images do not read the CAN bus"
    This page describes the gateway with the simulator **off**. The published images ship with the simulator **on** ([Demo images](demo.md)).

## Read-only

The gateway always runs the ESP32's **TWAI** controller in **listen-only** mode: it sends no frames, no ACK and no error frames. There is no mode that writes to the bus.

| Gateway | Channel used | Pins (TX / RX) |
|---|---|---|
| [LILYGO T-2CAN-FD](boards/t2canfd.md) | CAN B (TWAI, classic CAN 2.0) | GPIO 7 / GPIO 6 |
| [Generic ESP32](boards/esp32.md) | TWAI + external transceiver | GPIO 5 / GPIO 4 |

**CAN FD** (CAN A on the T-2CAN-FD, MCP2518FD) is **not implemented yet**.

## Speed

By default the gateway finds the speed on its own, just by listening: **1000, 500, 250 and 125 kbit/s**.

## Recognised ECUs

The gateway detects the profile from the frames it hears:

| Profile | Notes |
|---|---|
| Ecumaster EMU Black | |
| Haltech CAN V2 | |
| MaxxECU | |
| Generic OBD-II | Since the gateway never transmits, it makes no OBD-II requests: it can only read replies to requests made by other equipment |

!!! note "Not tested on hardware"
    Detection and decoding have not been validated on a car or a real ECU yet.
