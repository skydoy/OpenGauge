# Security

## Reporting a vulnerability

**Do not open a public issue.** Report it privately through [GitHub private vulnerability reporting](https://github.com/skydoy/OpenGauge/security/advisories/new), with the version, the board and steps to reproduce.

## Scope

The images in the releases, the web installer and the workflows of the [skydoy/OpenGauge](https://github.com/skydoy/OpenGauge) repository.

## What is protected

- **CAN read-only:** the gateway never transmits on the bus (listen-only).
- **Signed telemetry:** the displays reject packets without a valid ECDSA P-256 signature, and also replayed or old packets.

## Known limits

- The published images are bench builds. The signing key is a **test key**, shared by everyone who downloads the same version, and it can be extracted from the binary. **Do not use them in a car.**
- The demo images use neither Secure Boot nor flash encryption.
