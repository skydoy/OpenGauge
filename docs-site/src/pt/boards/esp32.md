# ESP32 genérico

![Ilustração de um gateway ESP32](../assets/boards/board-gateway.svg){ .og-board }

Qualquer placa **ESP32** (por exemplo uma ESP32 DevKit) com um **transceiver CAN externo de 3,3 V** (por exemplo SN65HVD230). Estado: **compila; imagem com o simulador de bancada**.

## Ligações ao transceiver

| Sinal | GPIO do ESP32 |
|---|---|
| CAN TX → TXD do transceiver | **5** |
| CAN RX ← RXD do transceiver | **4** |
| 3,3 V e GND | 3V3 e GND da placa |

O controlador TWAI corre sempre em **listen-only**. Nas imagens de demonstração o CAN não é lido.

## Instalar

No [instalador web](https://skydoy.github.io/OpenGauge/) escolhe **Gateway → ESP32 genérico**. Se a placa tiver um chip USB-série (CP210x, CH340/CH9102), instala o driver ([Instalar](../install.md#a-placa-nao-aparece-na-lista)).
