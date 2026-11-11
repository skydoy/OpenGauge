# LILYGO T-2CAN-FD

![Ilustração da LILYGO T-2CAN-FD](../assets/boards/board-t2canfd.svg){ .og-board }

Gateway com **ESP32-S3** e **dois canais CAN isolados**. Estado: **compila; sem teste em hardware**.

!!! warning "Não confundir"
    É a **T-2CAN-FD**, não a T-2CAN original (V1.0, com MCP2515), que usa um firmware incompatível.

## Os dois canais CAN

| Canal | Controlador | No Open Gauge |
|---|---|---|
| **CAN B** | TWAI nativo do ESP32-S3 (CAN 2.0 clássico) | **Usado**, em listen-only, nos GPIO **7 (TX)** e **6 (RX)** |
| **CAN A** | MCP2518FD por SPI (CAN FD) | **Ainda não implementado**: o chip fica sempre desselecionado (CS no GPIO 10 a HIGH) |

Liga o barramento ao **CAN B**. O CAN A (CAN FD) fica para uma versão futura.

!!! info "Nas imagens de demonstração"
    O gateway corre o simulador de bancada: **não lê tramas reais**, nem no CAN B. Vê [Imagens de demonstração](../demo.md).

## Hardware

| Item | Valor |
|---|---|
| Módulo | ESP32-S3-WROOM-1U: 16 MB de flash, 8 MB de PSRAM, antena externa (U.FL) |
| USB | USB-C ligado ao USB nativo do ESP32-S3 (sem chip USB-série, sem driver) |
| Transceivers | isolados nos dois canais |
| Alimentação | terminal de 2 pinos ou 5 V pelo USB-C |
| Consola | pelo USB-C |

Fontes oficiais: [repositório LILYGO T-2Can](https://github.com/Xinyuan-LilyGO/T-2Can) e [wiki LILYGO T-2Can-FD](https://wiki.lilygo.cc/products/industrial-series/t-2can-fd/).

## Instalar

No [instalador web](https://skydoy.github.io/OpenGauge/) escolhe **Gateway → LILYGO T-2CAN-FD**. Se a gravação falhar, mantém **BOOT** carregado e carrega em **RST**, e tenta de novo.

## Por validar no hardware

- Gravação pelo instalador web e consola pelo USB-C
- Receção no CAN B em listen-only nas quatro velocidades
- Confirmar que o CAN A fica calado (sem ACK nem tramas de erro)
- Terminação de 120 Ω em cada canal
- Alimentação a partir dos 12 V do carro
