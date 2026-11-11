# Troubleshooting

## The Install button doesn't show

Use **Chrome** or **Edge** on a computer, with the page opened over `https://`. Phones, Safari and Firefox don't work.

## Board not showing up

- Try another USB cable: many only charge.
- Boards with a USB-serial chip need its driver: CP210x (Silicon Labs) or CH340 / CH9102 (WCH). See [Install](install.md#board-not-showing-up).

## Installing again fails or the board doesn't boot

Close any other program using the serial port (Arduino IDE, serial monitor) and try again. If it still fails, hold the **BOOT** button (if the board has one) while plugging in the USB cable, then press **Install**. On the LILYGO T-2CAN-FD you can also hold **BOOT** and press **RST**.

## The display shows no data from the gateway

The gateway and the displays only work together when they come from the **same version**: each version has its own test key. Flash all of them from the same version.

## The display shows DISCONNECTED

The display has received no valid packets in the last 2 seconds.

1. Check the gateway is powered and close to the display.
2. Check the gateway and the display come **from the same version**.
3. **Did you reinstall only the gateway?** The display stores the highest gateway "epoch" it has seen and refuses packets with a lower one. A fresh gateway install may restart that count. Reinstall the display too.

## Ask for help

Open an [issue](https://github.com/skydoy/OpenGauge/issues) with the version, the board and what you see. Security issues go privately: [Security](security.md).
