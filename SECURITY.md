# Política de segurança · Security policy

## Reportar uma falha · Reporting a vulnerability
**Não abra uma issue pública.** Reporte em privado pelo
[GitHub private vulnerability reporting](https://github.com/skydoy/OpenGauge/security/advisories/new),
com a versão, a placa e os passos para reproduzir.

**Do not open a public issue.** Report it privately through
[GitHub private vulnerability reporting](https://github.com/skydoy/OpenGauge/security/advisories/new),
with the version, the board and steps to reproduce.

## Âmbito · Scope
Em âmbito: as imagens publicadas nas releases, o instalador web e os workflows deste repositório.
In scope: the images in the releases, the web installer and this repository's workflows.

## Limites conhecidos · Known limits
- As imagens publicadas são de bancada. A chave de assinatura da telemetria é de teste, igual para
  todos os que descarregam a mesma versão, e pode ser extraída do binário. Não as use num carro.
- Published images are bench builds. The telemetry signing key is a test key, shared by everyone who
  downloads the same version, and it can be extracted from the binary. Do not use them in a car.
