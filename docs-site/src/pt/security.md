# Segurança

## Reportar uma falha

**Não abras uma issue pública.** Reporta em privado pelo [GitHub private vulnerability reporting](https://github.com/skydoy/OpenGauge/security/advisories/new), com a versão, a placa e os passos para reproduzir.

## Âmbito

As imagens publicadas nas releases, o instalador web e os workflows do repositório [skydoy/OpenGauge](https://github.com/skydoy/OpenGauge).

## O que está protegido

- **CAN só de leitura:** o gateway nunca transmite no barramento (listen-only).
- **Telemetria assinada:** os ecrãs rejeitam pacotes sem assinatura ECDSA P-256 válida, e também pacotes repetidos ou antigos.

## Limites conhecidos

- As imagens publicadas são de bancada. A chave de assinatura é **de teste**, igual para quem descarrega a mesma versão, e pode ser extraída do binário. **Não as uses num carro.**
- As imagens de demonstração não usam Secure Boot nem cifra da flash.
