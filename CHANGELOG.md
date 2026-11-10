# Changelog

Todas as alterações relevantes deste repositório (página, instalador e versões publicadas).
Formato [Keep a Changelog](https://keepachangelog.com/pt-PT/1.1.0/); versões `vMAJOR.MINOR.PATCH[-beta]`,
iguais às do firmware.

## [Unreleased]
### Adicionado
- Página de entrada e instalador web (ESP Web Tools) para o gateway, o M5 Dial e o CrowPanel 1.28″.
- README em português e inglês, logótipo, ícones e imagem de partilha.
- Workflow `publish.yml`: publica no GitHub Pages as imagens da release mais recente.
- Manifest do gateway LILYGO T-2CAN-FD (`manifests/gateway-t2canfd.json` → `install/gateway-t2canfd/manifest.json`, ESP32-S3). Só fica ativo quando a release trouxer `opengauge-gateway-t2canfd-v<versão>.factory.bin`; sem teste em hardware. Substitui o manifest da T-CAN485 (decisão do Tiago de 2026-11-10).

### Alterado
- Passo 1 do instalador em dois níveis: primeiro Gateway ou Display, depois o modelo (LILYGO T-2CAN-FD ou ESP32 genérico; M5 Dial ou CrowPanel 1.28″), com botão para voltar. A T-2CAN-FD fica «em breve» até haver imagem publicada; substitui a T-CAN485 (decisão do Tiago de 2026-11-10).
- Botão de tema (sol/lua) igual ao do hub ESPmaniacs: última pílula depois de PT | EN, do mesmo tamanho, com ícone SVG centrado; o botão ativo mantém o laranja do Open Gauge.
