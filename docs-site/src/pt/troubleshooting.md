# Problemas

## O botão Instalar não aparece

Usa o **Chrome** ou o **Edge** num computador, com a página aberta em `https://`. Não funciona no telemóvel, no Safari nem no Firefox.

## A placa não aparece na lista

- Experimenta outro cabo USB: muitos só carregam.
- Placas com chip USB-série precisam do driver: CP210x (Silicon Labs) ou CH340 / CH9102 (WCH). Vê [Instalar](install.md#a-placa-nao-aparece-na-lista).

## Reinstalar falha ou a placa não arranca

Fecha outros programas que usem a porta série (Arduino IDE, monitor série) e tenta de novo. Se continuar a falhar, mantém carregado o botão **BOOT** (se a placa tiver) ao ligar o cabo USB e carrega em **Instalar**. Na LILYGO T-2CAN-FD também podes segurar **BOOT** e carregar em **RST**.

## O ecrã não mostra dados do gateway

O gateway e os ecrãs só se entendem se vierem da **mesma versão**: cada versão tem a sua chave de teste. Grava todos a partir da mesma versão.

## O ecrã mostra DISCONNECTED

O ecrã não recebeu pacotes válidos nos últimos 2 segundos.

1. Confirma que o gateway está ligado e perto do ecrã.
2. Confirma que gateway e ecrã são **da mesma versão**.
3. **Reinstalaste só o gateway?** O ecrã guarda a «época» mais alta do gateway que já viu e recusa pacotes com uma época mais baixa. Uma instalação nova do gateway pode recomeçar essa contagem. Reinstala também o ecrã.

## Pedir ajuda

Abre uma [issue](https://github.com/skydoy/OpenGauge/issues) com a versão, a placa e o que vês. Falhas de segurança vão em privado: [Segurança](security.md).
