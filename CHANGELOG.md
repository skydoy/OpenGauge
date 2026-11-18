# Changelog

Todas as alterações relevantes deste repositório (página, instalador e versões publicadas).
Formato [Keep a Changelog](https://keepachangelog.com/pt-PT/1.1.0/); versões `vMAJOR.MINOR.PATCH[-beta]`,
iguais às do firmware.

## [Unreleased]
### Alterado
- `CHANGELOG.md` organizado por versão, com cada alteração na versão em que foi publicada (tags `v1.2.4-beta` a `v1.2.8-beta`). Antes estava tudo em `[Unreleased]`.

### Removido
- Ficheiro `test` na raiz, criado por engano a 2026-11-03 (commit `fe04582`, conteúdo «test»).

## [1.2.8-beta] - 2026-11-16
### Alterado
- Página republicada com as imagens do firmware v1.2.8-beta. Sem alterações à página, ao instalador nem à documentação.

## [1.2.7-beta] - 2026-11-11
### Adicionado
- Documentação pública em PT e EN (MkDocs Material) em `docs-site/`, publicada em `/docs/pt/` e `/docs/en/`: primeiros passos, instalação, como funciona, placas, CAN e centralinas, imagens de demonstração, versões, problemas, FAQ, segurança e licença. Pesquisa, tema claro/escuro e PT | EN como no hub ESPmaniacs. O `publish.yml` compila-a com `mkdocs build --strict` e junta-a ao site sem mexer no instalador nem nos manifests.

## [1.2.6-beta] - 2026-11-11
### Alterado
- Imagens do firmware v1.2.6-beta. Sem alterações à página, ao instalador nem à documentação.

## [1.2.5-beta] - 2026-11-10
### Adicionado
- Manifest do gateway LILYGO T-2CAN-FD (`manifests/gateway-t2canfd.json` → `install/gateway-t2canfd/manifest.json`, ESP32-S3). Só fica ativo quando a release trouxer `opengauge-gateway-t2canfd-v<versão>.factory.bin`; sem teste em hardware. Substitui o manifest da T-CAN485 (decisão do Tiago de 2026-11-10).

### Alterado
- LILYGO T-2CAN-FD ativa no instalador (`ENABLE_T2CANFD = true` em `static/index.html`): o cartão deixa de estar «em breve» e passa a usar `install/gateway-t2canfd/manifest.json`. Só funciona depois de uma release com `opengauge-gateway-t2canfd-v<versão>.factory.bin`; o gateway mantém o simulador de bancada ligado; sem teste em hardware (decisão do Tiago de 2026-11-10).
- Passo 1 do instalador em dois níveis: primeiro Gateway ou Display, depois o modelo (LILYGO T-2CAN-FD ou ESP32 genérico; M5 Dial ou CrowPanel 1.28″), com botão para voltar. A T-2CAN-FD fica «em breve» até haver imagem publicada; substitui a T-CAN485 (decisão do Tiago de 2026-11-10).
- Botão de tema (sol/lua) igual ao do hub ESPmaniacs: última pílula depois de PT | EN, do mesmo tamanho, com ícone SVG centrado; o botão ativo mantém o laranja do Open Gauge.

## [1.2.4-beta] - 2026-11-03
### Adicionado
- Página de entrada e instalador web (ESP Web Tools) para o gateway, o M5 Dial e o CrowPanel 1.28″.
- README em português e inglês, logótipo, ícones e imagem de partilha.
- Workflow `publish.yml`: publica no GitHub Pages as imagens da release mais recente.
