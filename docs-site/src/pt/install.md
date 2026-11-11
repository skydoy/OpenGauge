# Instalar

A forma mais simples é o **instalador web**: grava a imagem completa pela porta USB, diretamente do browser.

<div class="hero-install" markdown="1">
[⚡ Abrir o instalador web](https://skydoy.github.io/OpenGauge/){ .md-button .md-button--primary }
</div>

## Instalador web em 3 passos

1. Abre o [instalador web](https://skydoy.github.io/OpenGauge/) no **Chrome** ou **Edge** num computador. A página tem de abrir em `https://`.
2. Escolhe **Gateway** ou **Ecrã** e depois o modelo. Liga a placa por USB com um cabo **de dados**.
3. Marca a confirmação («Percebo que são imagens de demonstração para bancada…») e carrega em **Instalar**. Escolhe a porta série e confirma.

Deves ver uma nova porta série na lista, depois uma barra de progresso e **Installation complete**. Repete para cada placa.

!!! tip "Ordem e versão"
    Instala **primeiro o gateway** e depois **cada ecrã**, todos da **mesma versão**. Se reinstalares o gateway, reinstala também os ecrãs (vê [Problemas](troubleshooting.md#o-ecra-mostra-disconnected)).

## A placa não aparece na lista?

- Experimenta outro cabo USB: muitos só carregam.
- Placas ESP32 com chip USB-série precisam do driver desse chip: [CP210x (Silicon Labs)](https://www.silabs.com/developer-tools/usb-to-uart-bridge-vcp-drivers) ou [CH340 / CH9102 (WCH)](https://www.wch-ic.com/downloads/category/30.html).
- A LILYGO T-2CAN-FD, o M5 Dial e o CrowPanel usam o USB nativo do ESP32-S3: não precisam de driver.
- Fecha outros programas que usem a porta série (Arduino IDE, monitor série).
- Se continuar a falhar, mantém carregado o botão **BOOT** da placa (se tiver) ao ligar o cabo USB e carrega em **Instalar**.

## Instalação manual (opcional)

Cada [release](https://github.com/skydoy/OpenGauge/releases) traz a imagem completa de cada placa, `opengauge-<placa>-v<versão>.factory.bin`, para gravar no endereço `0x0`. Confere primeiro a soma no `SHA256SUMS.txt`:

```bash
sha256sum -c SHA256SUMS.txt --ignore-missing
```

Depois grava com o [esptool](https://docs.espressif.com/projects/esptool/) (troca a porta e `<versão>` pelo número da release):

```bash
esptool --port /dev/ttyACM0 write-flash 0x0 opengauge-gateway-t2canfd-v<versão>.factory.bin
```

!!! note
    Em versões antigas do esptool o comando chama-se `esptool.py` e a opção `write_flash`. Usa a imagem `*.factory.bin` na primeira instalação; os ficheiros `*.ota.bin` só têm a aplicação.
