# Elecrow CrowPanel 1.28″

![Ilustração do CrowPanel 1.28″](../assets/boards/board-crowpanel128.svg){ .og-board }

Ecrã redondo rotativo da Elecrow (*CrowPanel 1.28inch HMI ESP32 Rotary Display*). Estado: **compila; sem teste em hardware**.

| Item | Valor |
|---|---|
| SoC | ESP32-S3R8 (8 MB de PSRAM) |
| Flash | 16 MB |
| Ecrã | IPS redondo 1,28″, 240×240 (GC9A01) |
| Touch | CST816D |
| Alimentação | 5 V pelo USB-C (sem entrada de 12 V) |

O encoder, o botão e os LEDs da placa não são usados pelo Open Gauge.

Fonte: [wiki Elecrow](https://www.elecrow.com/wiki/CrowPanel_1.28inch-HMI_ESP32_Rotary_Display.html).

## Instalar

No [instalador web](https://skydoy.github.io/OpenGauge/) escolhe **Ecrã → CrowPanel 1.28″**, depois de gravares o gateway da mesma versão.

## Por validar no hardware

- Orientação, ordem de cores e inversão da imagem
- Eixos do touch
- Retroiluminação sem cintilação
