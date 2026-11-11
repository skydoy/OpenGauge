# CAN e centralinas

!!! warning "Nas imagens de demonstração o CAN não é lido"
    Tudo nesta página descreve o gateway com o simulador **desligado**. As imagens publicadas trazem o simulador **ligado** ([Imagens de demonstração](demo.md)).

## Só leitura

O gateway usa o controlador **TWAI** do ESP32 sempre em modo **listen-only**: não envia tramas, não dá ACK e não envia tramas de erro. Não há nenhum modo de escrita no barramento.

| Gateway | Canal usado | Pinos (TX / RX) |
|---|---|---|
| [LILYGO T-2CAN-FD](boards/t2canfd.md) | CAN B (TWAI, CAN 2.0 clássico) | GPIO 7 / GPIO 6 |
| [ESP32 genérico](boards/esp32.md) | TWAI + transceiver externo | GPIO 5 / GPIO 4 |

O **CAN FD** (CAN A da T-2CAN-FD, MCP2518FD) **ainda não está implementado**.

## Velocidade

Por omissão o gateway procura a velocidade sozinho, só a ouvir: **1000, 500, 250 e 125 kbit/s**.

## Centralinas reconhecidas

O gateway deteta o perfil pelas tramas que ouve:

| Perfil | Notas |
|---|---|
| Ecumaster EMU Black | |
| Haltech CAN V2 | |
| MaxxECU | |
| OBD-II genérico | Como o gateway nunca transmite, não faz pedidos OBD-II: só pode ler respostas a pedidos feitos por outro equipamento |

!!! note "Sem teste em hardware"
    A deteção e a leitura ainda não foram validadas num carro nem numa centralina real.
