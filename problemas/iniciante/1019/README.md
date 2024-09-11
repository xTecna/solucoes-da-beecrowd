# 1019 - Conversão de Tempo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1019)

## Solução

Para calcular o número de horas cheias que existem em um tempo em segundos, basta pegar a divisão inteira deste tempo por $3600$, a quantidade de segundos em uma hora. Após pegar o número de horas cheias, a única informação que permanece relevante é o resto da divisão por $3600$, já que o resto você já converteu em horas. Seguindo um raciocínio similar para os minutos, podemos calcular rapidamente os valores que precisamos. Vamos testar nossa ideia com $140153$ segundos.

1. Tem $38$ horas completas em $140153$ segundos, que calculamos dividindo $\frac{140153}{3600}$;
2. Fora dessas $38$ horas completas, temos $3353$ segundos que podemos continuar convertendo (resto da divisão de $140153$ por $3600$);
3. Tem $55$ minutos nestes $3353$, pois $\frac{3353}{60} = 55$;
4. Fora desses $55$ minutos completos, sobraram $53$ segundos;
5. Logo, nossa resposta é $38$ horas, $55$ minutos e $53$ segundos.