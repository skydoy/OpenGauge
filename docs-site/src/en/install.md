# Install

The simplest way is the **web installer**: it writes the full image over USB, straight from the browser.

<div class="hero-install" markdown="1">
[⚡ Open the web installer](https://skydoy.github.io/OpenGauge/){ .md-button .md-button--primary }
</div>

## Web installer in 3 steps

1. Open the [web installer](https://skydoy.github.io/OpenGauge/) in **Chrome** or **Edge** on a computer. The page must be opened over `https://`.
2. Choose **Gateway** or **Display**, then the model. Connect the board by USB with a **data** cable.
3. Tick the confirmation ("I understand these are bench demo images…") and press **Install**. Pick the serial port and confirm.

You should see a new serial port in the list, then a progress bar and **Installation complete**. Repeat for each board.

!!! tip "Order and version"
    Install **the gateway first**, then **each display**, all from the **same version**. If you reinstall the gateway, reinstall the displays too (see [Troubleshooting](troubleshooting.md#the-display-shows-disconnected)).

## Board not showing up?

- Try another USB cable: many only charge.
- ESP32 boards with a USB-serial chip need that chip's driver: [CP210x (Silicon Labs)](https://www.silabs.com/developer-tools/usb-to-uart-bridge-vcp-drivers) or [CH340 / CH9102 (WCH)](https://www.wch-ic.com/downloads/category/30.html).
- The LILYGO T-2CAN-FD, the M5 Dial and the CrowPanel use the ESP32-S3's native USB: no driver needed.
- Close any other program using the serial port (Arduino IDE, serial monitor).
- If it still fails, hold the board's **BOOT** button (if it has one) while plugging in the USB cable, then press **Install**.

## Manual install (optional)

Each [release](https://github.com/skydoy/OpenGauge/releases) ships the full image of each board, `opengauge-<board>-v<version>.factory.bin`, to be written at address `0x0`. Check its checksum in `SHA256SUMS.txt` first:

```bash
sha256sum -c SHA256SUMS.txt --ignore-missing
```

Then flash it with [esptool](https://docs.espressif.com/projects/esptool/) (change the port, and `<version>` to the release number):

```bash
esptool --port /dev/ttyACM0 write-flash 0x0 opengauge-gateway-t2canfd-v<version>.factory.bin
```

!!! note
    In older esptool versions the command is `esptool.py` and the option is `write_flash`. Use the `*.factory.bin` image for the first install; the `*.ota.bin` files only hold the application.
