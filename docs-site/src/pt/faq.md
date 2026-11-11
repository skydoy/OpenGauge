# FAQ

**Posso usar isto no carro?**
: Ainda não. As imagens publicadas são de bancada: o gateway corre o simulador e não lê o CAN. Não uses num veículo em circulação.

**O gateway pode estragar alguma coisa no CAN do carro?**
: O controlador CAN trabalha sempre em listen-only: não transmite, não dá ACK nem envia tramas de erro.

**Preciso de telemóvel, conta ou Internet?**
: Não. O gateway fala diretamente com os ecrãs por ESP-NOW.

**Quantos ecrãs posso usar?**
: O gateway envia em broadcast, por isso um ou mais ecrãs recebem os mesmos dados. Ainda não há um número máximo testado.

**A T-2CAN-FD lê CAN FD?**
: Ainda não. O Open Gauge usa só o CAN B (CAN 2.0 clássico). O CAN A (MCP2518FD, CAN FD) é trabalho futuro.

**Porque é que um ecrã antigo deixou de funcionar com o gateway novo?**
: A chave de teste muda em cada versão. Grava todas as placas a partir da mesma versão.

**Onde está o código-fonte?**
: Ainda não é público. Vai ser publicado no repositório no fim da fase 3. Até lá vale a [oferta escrita de código-fonte](https://github.com/skydoy/OpenGauge/blob/main/SOURCE_OFFER.md) para as partes LGPL-2.1.

**Posso contribuir?**
: Por agora não há pull requests de código. Podes abrir uma [issue](https://github.com/skydoy/OpenGauge/issues) com um problema no instalador ou o resultado de um teste numa placa.

**Posso usar comercialmente?**
: Não. A licença é a PolyForm Noncommercial 1.0.0: uso pessoal e não comercial. Vê [Licença e créditos](licence.md).
