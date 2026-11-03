# NOTICE: OpenGauge e componentes de terceiros

Required Notice: Copyright (c) 2026 Tiago Febra

> **English summary.** OpenGauge is licensed under the PolyForm Noncommercial License 1.0.0. The third-party components below are not part of OpenGauge and keep their own licences; full texts are in [`LICENSES/`](LICENSES/). The firmware binaries include arduino-esp32 under the LGPL-2.1; see the [written source offer](SOURCE_OFFER.md).

O OpenGauge (firmware, instalador, página e documentação deste repositório) está sob a **PolyForm Noncommercial License 1.0.0** (`LICENSE`, <https://polyformproject.org/licenses/noncommercial/1.0.0>). O uso comercial precisa de uma licença comercial do Tiago Febra.

Os componentes abaixo **não** são do OpenGauge e mantêm as suas licenças. A PolyForm Noncommercial não se aplica a eles. Quem distribuir o OpenGauge, em código ou em binário, tem de manter este ficheiro e os textos de licença indicados.

## Firmware (gateway e display)

| Componente | Licença | Aviso / origem |
|---|---|---|
| arduino-esp32 (2.0.17 no gateway, 3.3.12 no display), incluindo `WiFi`, `Wire` e o núcleo `cores/esp32` | LGPL-2.1-or-later (ficheiro `LICENSE.md` do repositório). Alguns ficheiros, como `Preferences`, são Apache-2.0 | © Espressif Systems e autores indicados em cada ficheiro (por ex. Ivan Grokhotkov, Nicholas Zambetti, David A. Mellis, Hernando Barragan, Paul Stoffregen). Código-fonte: <https://github.com/espressif/arduino-esp32> |
| ESP-IDF (v4.4.7 no gateway, v5.5.5 no display; incluído no core Arduino) | Apache-2.0, com componentes de terceiros MIT/BSD (FreeRTOS MIT, lwIP BSD, newlib BSD, wpa_supplicant BSD, mynewt-nimble Apache-2.0…) | © Espressif Systems. Lista completa: `LICENSES/ESP-IDF-v4.4.7-COPYRIGHT.rst` e `LICENSES/ESP-IDF-v5.5.5-COPYRIGHT.rst` |
| Bibliotecas binárias Espressif (Wi-Fi/ESP-NOW, BT, PHY) | Apache-2.0 (só binário) | © Espressif Systems |
| Mbed TLS (ECDSA P-256) | Apache-2.0 OR GPL-2.0-or-later; o OpenGauge usa-o sob **Apache-2.0** | Autores indicados nos cabeçalhos dos ficheiros Mbed TLS (incluído no ESP-IDF) |
| LVGL 8.4.0 (display) | MIT | Copyright (c) 2021 LVGL Kft |
| Fonte Montserrat (embutida nas fontes `lv_font_montserrat_*` do LVGL) | SIL Open Font License 1.1 | Copyright 2024 The Montserrat.Git Project Authors (https://github.com/JulietaUla/Montserrat.git) |
| Font Awesome 5 Free (símbolos `LV_SYMBOL_*` nas mesmas fontes) | Ícones CC BY 4.0, ficheiros de fonte SIL OFL 1.1 | Font Awesome Free 5 — licença em https://fontawesome.com/license/free (manter os comentários de atribuição embutidos nas fontes do LVGL) |
| NimBLE-Arduino 2.5.1 (display) | Apache-2.0 | Ver o NOTICE reproduzido abaixo. Inclui o Apache Mynewt NimBLE (Apache-2.0, The Apache Software Foundation) |
| Tabela de inicialização GC9A01 em `firmware-display/boards/common/Gc9a01SpiBoard.h` | Apache-2.0 | SPDX-FileCopyrightText: 2021-2026 Espressif Systems (Shanghai) CO LTD (componente `espressif/esp_lcd_gc9a01`) |
| libgcc / libstdc++ (toolchain) | GPL-3.0 com GCC Runtime Library Exception 3.1 | Free Software Foundation |

### NOTICE do NimBLE-Arduino (reproduzido sem alterações)

```
esp-nimble-cpp
NimBLE-Arduino
Copyright 2020-2026 Ryan Powell <ryan@nable-embedded.io> and
esp-nimble-cpp, NimBLE-Arduino contributors.

The Initial Developer of some parts of this library, which are copied from,
derived from, or inspired by is, esp32-snippets, Copyright 2017 Neil Kolban.

If this library is used for commercial purposes, it is requested that the user consider
making a donation and/or sponsoring this project to support it's ongoing development.
```

## Textos completos das licenças

Os textos completos (LGPL-2.1, Apache-2.0, MIT, BSD-3-Clause, SIL OFL 1.1, CC BY 4.0, GCC Runtime Library Exception 3.1, licença Font Awesome Free e NOTICE do NimBLE-Arduino) estão na pasta [`LICENSES/`](LICENSES/) (índice em `LICENSES/README.md`). Têm de acompanhar qualquer distribuição de binários: vêm no ficheiro `opengauge-licenses-v<versão>.zip` de cada [release](https://github.com/skydoy/OpenGauge/releases).

## LGPL-2.1 (arduino-esp32): oferta escrita de código-fonte

Enquanto o código-fonte do OpenGauge não estiver neste repositório, cada binário é acompanhado pela [oferta escrita](SOURCE_OFFER.md) prevista na secção 6c da LGPL-2.1 (válida por pelo menos 3 anos). O `SOURCE_OFFER.md` vai também em cada release.
