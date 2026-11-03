# LICENSES

Full license texts for the third-party components inside the OpenGauge firmware binaries.
OpenGauge itself is under the PolyForm Noncommercial License 1.0.0 (`../LICENSE`); see `../NOTICE.md`.
These texts travel with every release in `opengauge-licenses-v<version>.zip`.

Textos completos das licenças dos componentes de terceiros incluídos nos binários do firmware OpenGauge.
O OpenGauge está sob a PolyForm Noncommercial License 1.0.0 (`../LICENSE`); ver `../NOTICE.md`.

| File | Component(s) | Source of the text (retrieved 2026-11-02) |
|---|---|---|
| `LGPL-2.1.txt` | arduino-esp32 2.0.17 (gateway) and 3.3.12 (displays): `cores/esp32`, `WiFi`, `Wire` | <https://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt> (same licence as `LICENSE.md` of arduino-esp32) |
| `Apache-2.0.txt` | ESP-IDF, Espressif binary libraries (Wi-Fi/ESP-NOW, BT, PHY), Mbed TLS (used under Apache-2.0), NimBLE-Arduino 2.5.1 and Apache Mynewt NimBLE, `Preferences`, GC9A01 init table (`espressif/esp_lcd_gc9a01`) | SPDX license-list-data |
| `NimBLE-Arduino-NOTICE.txt` | NimBLE-Arduino 2.5.1 NOTICE (reproduced unchanged, Apache-2.0 §4d) | h2zero/NimBLE-Arduino tag 2.5.1 |
| `MIT-LVGL.txt` | LVGL 8.4.0 (displays) | lvgl/lvgl tag v8.4.0, `LICENCE.txt` |
| `MIT.txt` | MIT-licensed ESP-IDF components (e.g. FreeRTOS kernel) | SPDX license-list-data (generic text; copyright holders in the ESP-IDF COPYRIGHT files) |
| `BSD-3-Clause.txt` | BSD-licensed ESP-IDF components (e.g. lwIP, newlib, wpa_supplicant) | SPDX license-list-data (generic text; copyright holders in the ESP-IDF COPYRIGHT files) |
| `OFL-1.1-Montserrat.txt` | Montserrat font, embedded in LVGL `lv_font_montserrat_*` (displays) | JulietaUla/Montserrat `OFL.txt` |
| `FontAwesome-Free-5-LICENSE.txt`, `CC-BY-4.0.txt` | Font Awesome Free 5 symbols in the same LVGL fonts (icons CC BY 4.0, font files OFL 1.1) | FortAwesome/Font-Awesome branch 5.x; SPDX |
| `GCC-exception-3.1.txt` | libgcc / libstdc++ runtime (GPL-3.0 with GCC Runtime Library Exception 3.1) | SPDX license-list-data |
| `ESP-IDF-v5.5.5-COPYRIGHT.rst` | Third-party component list of ESP-IDF v5.5.5 (displays, arduino-esp32 3.3.12) | espressif/esp-idf tag v5.5.5, `docs/en/COPYRIGHT.rst` |
| `ESP-IDF-v4.4.7-COPYRIGHT.rst` | Third-party component list of ESP-IDF v4.4.7 (gateway, arduino-esp32 2.0.17) | espressif/esp-idf tag v4.4.7, `docs/en/COPYRIGHT.rst` |

Not included because they are not in the firmware: Flutter app packages (the app is not distributed here), LovyanGFX/M5GFX/M5Unified (not used by the current firmware).
