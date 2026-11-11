# Imagens de demonstração

As imagens publicadas no [instalador web](https://skydoy.github.io/OpenGauge/) e nas [releases](https://github.com/skydoy/OpenGauge/releases) são **de demonstração, para bancada**.

## O gateway corre o simulador

- O **simulador de bancada** está ligado na versão atual: o gateway envia **dados simulados**.
- O gateway **não lê tramas reais** do CAN, em nenhuma placa (nem no CAN B da T-2CAN-FD).
- **Não instales num carro.**

## Chave de assinatura de teste

- Todas as imagens de uma versão (gateway e ecrãs) partilham **a mesma chave de teste**. Qualquer pessoa a pode extrair do binário.
- Serve para mostrar que a ligação funciona; **não protege nada**.
- A chave **muda em cada versão**. Por isso o emparelhamento só está garantido entre imagens **da mesma release**: um gateway novo **não** funciona com um ecrã gravado com uma versão anterior, e vice-versa.
- As imagens de demonstração não usam Secure Boot nem cifra da flash.

## O que fazer

1. Grava o gateway e todos os ecrãs a partir da **mesma versão**.
2. Quando sair uma versão nova, **regrava todas as placas**.
3. Confere as somas em `SHA256SUMS.txt` se instalares à mão ([Instalar](install.md#instalacao-manual-opcional)).
