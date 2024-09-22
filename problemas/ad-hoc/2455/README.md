# 2455 - Gangorra

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2455)

## Solução

Pelo enunciado, podemos ver que o equilíbrio é obtido quando $P_{1} \times C_{1} = P_{2} \times C_{2}$. Com isso, se $P_{1} \times C_{1} > P_{2} \times C_{2}$, então a pessoa 1 é a mais pesada; e se $P_{2} \times C_{2} > P_{1} \times C_{1}$, então a pessoa 2 é a mais pesada. Aqui eu decidi armazenar em uma variável a diferença entre os dois pesos e usar a resposta para saber qual é a pessoa mais pesada para imprimir de maneira apropriada. Outra maneira de resolver este problema é verificar cada uma destas três condições e responder apropriadamente.