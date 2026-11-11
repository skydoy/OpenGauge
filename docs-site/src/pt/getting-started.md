# Primeiros passos

Para a demonstração precisas de **um gateway** e de **pelo menos um ecrã**, todos gravados a partir da **mesma versão**.

## Precisas de

- Um **gateway**: uma [LILYGO T-2CAN-FD](boards/t2canfd.md) ou uma [placa ESP32 genérica](boards/esp32.md)
- Um ou mais **ecrãs**: [M5Stack M5 Dial v1.1](boards/m5dial.md) ou [Elecrow CrowPanel 1.28″](boards/crowpanel.md)
- Um computador com **Chrome** ou **Edge** (não funciona no telemóvel, no Safari nem no Firefox)
- Um cabo USB **de dados** (muitos cabos só carregam)

Para a demonstração **não precisas** de carro, de centralina nem de ligação ao CAN: o gateway gera dados simulados.

## Placas em resumo

| Placa | Função | Chip | Estado |
|---|---|---|---|
| [LILYGO T-2CAN-FD](boards/t2canfd.md) | Gateway | ESP32-S3 | Compila · simulador de bancada · sem teste em hardware |
| [Placa ESP32 (ex.: ESP32 DevKit)](boards/esp32.md) | Gateway | ESP32 | Compila · simulador de bancada |
| [M5Stack M5 Dial v1.1](boards/m5dial.md) | Ecrã 240×240 (piloto) | ESP32-S3 | Compila · sem teste em hardware |
| [Elecrow CrowPanel 1.28″](boards/crowpanel.md) | Ecrã 240×240 | ESP32-S3 | Compila · sem teste em hardware |

Uma placa só conta como suportada depois de confirmada em hardware.

## A seguir

1. [Instalar](install.md): primeiro o gateway, depois cada ecrã
2. Liga as placas à alimentação USB, perto umas das outras
3. O ecrã passa do ecrã de emparelhamento para o mostrador quando recebe dados válidos ([Como funciona](how-it-works.md))
