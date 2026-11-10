# Manifests do instalador

Modelos dos manifests do [ESP Web Tools](https://esphome.github.io/esp-web-tools/).
O workflow `publish.yml` troca `__VERSION__` pela versão da release (sem o `v`) e copia
cada manifest para `install/<placa>/manifest.json`, ao lado da imagem `.factory.bin`.

| Ficheiro | Placa | Chip | Imagem |
|---|---|---|---|
| `gateway-esp32.json` | Gateway (placa ESP32) | ESP32 | `opengauge-gateway-esp32-v<versão>.factory.bin` |
| `gateway-t2canfd.json` | Gateway LILYGO T-2CAN-FD | ESP32-S3 | `opengauge-gateway-t2canfd-v<versão>.factory.bin` |
| `display-m5dial.json` | M5Stack M5 Dial v1.1 | ESP32-S3 | `opengauge-display-m5dial-v<versão>.factory.bin` |
| `display-crowpanel128.json` | Elecrow CrowPanel 1.28" | ESP32-S3 | `opengauge-display-crowpanel128-v<versão>.factory.bin` |

A imagem `.factory.bin` já junta bootloader, tabela de partições, `boot_app0` e a aplicação,
por isso grava-se no endereço `0x0`.
