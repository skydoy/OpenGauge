# Demo images

The images published in the [web installer](https://skydoy.github.io/OpenGauge/) and in the [releases](https://github.com/skydoy/OpenGauge/releases) are **demo images, for the bench**.

## The gateway runs the simulator

- The **bench simulator** is on in the current version: the gateway sends **simulated data**.
- The gateway **reads no real frames** from the CAN bus, on any board (not even on the T-2CAN-FD's CAN B).
- **Do not install it in a car.**

## Test signing key

- All images of a version (gateway and displays) share **the same test key**. Anyone can extract it from the binary.
- It shows the data path works; **it does not protect anything**.
- The key **changes every version**. So pairing is only guaranteed between images **from the same release**: a new gateway does **not** work with a display flashed with an older version, and vice versa.
- The demo images use neither Secure Boot nor flash encryption.

## What to do

1. Flash the gateway and every display from the **same version**.
2. When a new version comes out, **reflash every board**.
3. Check the checksums in `SHA256SUMS.txt` if you install by hand ([Install](install.md#manual-install-optional)).
