# Versões e ficheiros

As versões seguem `vMAJOR.MINOR.PATCH[-beta]`, iguais às do firmware. A lista completa está em [GitHub Releases](https://github.com/skydoy/OpenGauge/releases).

## Ficheiros de cada versão

Por placa:

- `*.factory.bin`: imagem completa para a primeira instalação por USB (endereço `0x0`)
- `*.ota.bin`: só a aplicação

E ainda: `SHA256SUMS.txt`, `LICENSE`, `NOTICE.md`, `SOURCE_OFFER.md` e `opengauge-licenses-v<versão>.zip` (a pasta [LICENSES](https://github.com/skydoy/OpenGauge/tree/main/LICENSES)).

| Placa | Imagem completa |
|---|---|
| LILYGO T-2CAN-FD | `opengauge-gateway-t2canfd-v<versão>.factory.bin` |
| ESP32 genérico | `opengauge-gateway-esp32-v<versão>.factory.bin` |
| M5Stack M5 Dial | `opengauge-display-m5dial-v<versão>.factory.bin` |
| CrowPanel 1.28″ | `opengauge-display-crowpanel128-v<versão>.factory.bin` |

O gateway e os ecrãs só funcionam juntos se vierem **da mesma versão** ([porquê](demo.md#chave-de-assinatura-de-teste)).

## Versão em uso

O instalador web usa sempre a versão publicada mais recente; vê o número e as notas em [GitHub Releases](https://github.com/skydoy/OpenGauge/releases). Todas as versões publicadas até agora são betas de demonstração, com o simulador de bancada ligado no gateway. A imagem da LILYGO T-2CAN-FD existe desde a v1.2.5-beta.

Histórico do instalador e da página: [CHANGELOG.md](https://github.com/skydoy/OpenGauge/blob/main/CHANGELOG.md).
