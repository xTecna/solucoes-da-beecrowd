# 2377 - Pedágio

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2377)

## Solução

O custo da viagem depende tanto do custo da viagem em si quanto do preço pago nos pedágios encontrados. Para calcular apenas o custo da viagem, basta multiplicar o comprimento da estrada pelo custo por quilômetro percorrido. Para calcular o custo dos pedágios, basta multiplicar o custo de cada pedágio pelo número de pedágios existentes na estrada, que pode ser calculado pelo quociente da divisão inteira entre o comprimento da estrada e a distância entre dois pedágios consecutivos.

Considerando então $L$ como o comprimento da estrada, $D$ como a distância entre dois pedágios consecutivos, $K$ o custo por quilômetro percorrido e $P$ como o valor de cada pedágio, temos que o custo total da viagem é de $LK + P\lfloor\frac{L}{D}\rfloor$.