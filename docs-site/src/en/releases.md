# Releases and files

Versions follow `vMAJOR.MINOR.PATCH[-beta]`, the same as the firmware. The full list is on [GitHub Releases](https://github.com/skydoy/OpenGauge/releases).

## Release files

Per board:

- `*.factory.bin`: full image for the first USB install (address `0x0`)
- `*.ota.bin`: the application only

Plus: `SHA256SUMS.txt`, `LICENSE`, `NOTICE.md`, `SOURCE_OFFER.md` and `opengauge-licenses-v<version>.zip` (the [LICENSES](https://github.com/skydoy/OpenGauge/tree/main/LICENSES) folder).

| Board | Full image |
|---|---|
| LILYGO T-2CAN-FD | `opengauge-gateway-t2canfd-v<version>.factory.bin` |
| Generic ESP32 | `opengauge-gateway-esp32-v<version>.factory.bin` |
| M5Stack M5 Dial | `opengauge-display-m5dial-v<version>.factory.bin` |
| CrowPanel 1.28″ | `opengauge-display-crowpanel128-v<version>.factory.bin` |

The gateway and the displays only work together when they come **from the same version** ([why](demo.md#test-signing-key)).

## Version in use

The web installer always uses the latest published version; see its number and notes on [GitHub Releases](https://github.com/skydoy/OpenGauge/releases). Every version published so far is a demo beta, with the bench simulator on in the gateway. The LILYGO T-2CAN-FD image has been available since v1.2.5-beta.

Installer and page history: [CHANGELOG.md](https://github.com/skydoy/OpenGauge/blob/main/CHANGELOG.md).
