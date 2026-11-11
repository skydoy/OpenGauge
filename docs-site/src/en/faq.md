# FAQ

**Can I use this in my car?**
: Not yet. The published images are bench builds: the gateway runs the simulator and does not read the CAN bus. Do not use it in a vehicle on the road.

**Can the gateway harm anything on the car's CAN bus?**
: The CAN controller always runs in listen-only: it does not transmit, ACK or send error frames.

**Do I need a phone, an account or the internet?**
: No. The gateway talks directly to the displays over ESP-NOW.

**How many displays can I use?**
: The gateway broadcasts, so one or more displays receive the same data. No maximum has been tested yet.

**Does the T-2CAN-FD read CAN FD?**
: Not yet. Open Gauge only uses CAN B (classic CAN 2.0). CAN A (MCP2518FD, CAN FD) is future work.

**Why did an older display stop working with the new gateway?**
: The test key changes every version. Flash every board from the same version.

**Where is the source code?**
: It is not public yet. It will be published in the repository at the end of phase 3. Until then the [written source offer](https://github.com/skydoy/OpenGauge/blob/main/SOURCE_OFFER.md) covers the LGPL-2.1 parts.

**Can I contribute?**
: There are no code pull requests for now. You can open an [issue](https://github.com/skydoy/OpenGauge/issues) about the installer or with a test result on a board.

**Can I use it commercially?**
: No. The licence is PolyForm Noncommercial 1.0.0: personal and non-commercial use. See [Licence & credits](licence.md).
