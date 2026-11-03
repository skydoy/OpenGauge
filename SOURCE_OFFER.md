# Written offer for source code (GNU LGPL-2.1, section 6c)

**English** · [Português](#oferta-escrita-de-código-fonte-gnu-lgpl-21-secção-6c)

> Draft. To be reviewed by a lawyer before the first public release.

The OpenGauge firmware binaries published in this repository (`*.factory.bin`, `*.ota.bin`) are statically linked with parts of **arduino-esp32**, which is licensed under the **GNU Lesser General Public License, version 2.1** (`LICENSES/LGPL-2.1.txt`):

| Binary | arduino-esp32 version | Upstream source |
|---|---|---|
| Gateway (ESP32) | 2.0.17 (ESP-IDF v4.4.7) | <https://github.com/espressif/arduino-esp32/tree/2.0.17> |
| Displays (ESP32-S3: M5 Dial, CrowPanel 1.28″) | 3.3.12 (ESP-IDF v5.5.5) | <https://github.com/espressif/arduino-esp32/tree/3.3.12> |

OpenGauge does not modify arduino-esp32.

**Offer.** For at least **three (3) years** from the date each firmware version is published here, Tiago Febra will give anyone who receives that binary, for a charge no greater than the cost of physically performing the distribution (an online download is free):

1. the complete machine-readable source code of the arduino-esp32 version used by that binary, and
2. the OpenGauge firmware of the same version as object files (`.o`/`.a`), with the linker scripts, build configuration and instructions needed to relink it with a modified arduino-esp32 and produce a new firmware image.

**How to ask.** Open an issue at <https://github.com/skydoy/OpenGauge/issues> titled `Source request: <binary file name>`. Say which file and version you received.

When the OpenGauge source code is published in this repository (planned for the end of phase 3), each binary will sit next to the source of the same version, and that will replace this offer for those versions.

---

# Oferta escrita de código-fonte (GNU LGPL-2.1, secção 6c)

> Rascunho. A rever por um advogado antes da primeira release pública.

Os binários do firmware OpenGauge publicados neste repositório (`*.factory.bin`, `*.ota.bin`) estão ligados estaticamente a partes do **arduino-esp32**, licenciado sob a **GNU Lesser General Public License, versão 2.1** (`LICENSES/LGPL-2.1.txt`):

| Binário | Versão do arduino-esp32 | Código-fonte original |
|---|---|---|
| Gateway (ESP32) | 2.0.17 (ESP-IDF v4.4.7) | <https://github.com/espressif/arduino-esp32/tree/2.0.17> |
| Displays (ESP32-S3: M5 Dial, CrowPanel 1.28″) | 3.3.12 (ESP-IDF v5.5.5) | <https://github.com/espressif/arduino-esp32/tree/3.3.12> |

O OpenGauge não altera o arduino-esp32.

**Oferta.** Durante pelo menos **três (3) anos** a contar da data em que cada versão do firmware é publicada aqui, o Tiago Febra entrega a quem receber esse binário, por um preço não superior ao custo de fazer a entrega (o download é gratuito):

1. o código-fonte completo, legível por máquina, da versão do arduino-esp32 usada nesse binário; e
2. o firmware OpenGauge da mesma versão em ficheiros objeto (`.o`/`.a`), com os scripts de ligação, a configuração de build e as instruções necessárias para o voltar a ligar a um arduino-esp32 modificado e gerar uma nova imagem.

**Como pedir.** Abre uma issue em <https://github.com/skydoy/OpenGauge/issues> com o título `Source request: <nome do ficheiro>`. Indica o ficheiro e a versão que recebeste.

Quando o código-fonte do OpenGauge for publicado neste repositório (previsto para o fim da fase 3), cada binário fica ao lado do código da mesma versão, o que substitui esta oferta para essas versões.
