---
title: Início
hide:
  - toc
---

# Open Gauge

![Open Gauge](assets/img/logo-light.svg#only-light){ .og-hero-logo }
![Open Gauge](assets/img/logo-dark.svg#only-dark){ .og-hero-logo }

**Mostradores digitais sem fios para o carro, com ESP32.** Um **gateway** lê os dados da centralina (ECU) pelo barramento CAN e envia-os por ESP-NOW para um ou mais **ecrãs redondos**. Não precisas de telemóvel, conta nem Internet.

<div class="hero-install" markdown="1">
[⚡ Abrir o instalador web](https://skydoy.github.io/OpenGauge/){ .md-button .md-button--primary }
</div>

!!! warning "Imagens de demonstração · só bancada"
    As imagens publicadas estão em desenvolvimento e **não foram testadas em hardware**. O gateway corre o **simulador de bancada**: envia dados simulados e **não lê o CAN**. Não instales num carro. Vê [Imagens de demonstração](demo.md).

- **CAN só de leitura:** o controlador CAN do gateway trabalha em modo *listen-only* e nunca transmite no barramento do carro.
- **Dados assinados (ECDSA P-256):** cada pacote é assinado pelo gateway e cada ecrã confere a assinatura antes de mostrar os valores.

## Começa aqui

1. [Primeiros passos](getting-started.md) — o que precisas
2. [Instalar](install.md) — gravar o gateway e os ecrãs
3. [Como funciona](how-it-works.md) — gateway, ESP-NOW e assinatura
4. [Placas](boards/index.md) — LILYGO T-2CAN-FD, ESP32, M5 Dial, CrowPanel

Também: [CAN e centralinas](can.md) · [Versões e ficheiros](releases.md) · [Problemas](troubleshooting.md) · [FAQ](faq.md) · [Segurança](security.md) · [Licença e créditos](licence.md)
