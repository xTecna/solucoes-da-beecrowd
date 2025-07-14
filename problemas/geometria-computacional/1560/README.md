# 1560 - Energia dos Triângulos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1560)

## Solução

Aqui o problema quer saber qual é a soma de energia de todos os possíveis triângulos formados pelos pontos pretos. Com um tempo limite grande e no máximo $100$ pontos pretos, podemos resolver esse algoritmo em complexidade $O(n^{4})$ medindo a energia de todos os triângulos possíveis testando os pontos pretos $3$ a $3$ (o que confere uma complexidade de $O(n^{3})$) e testando para todos os pontos brancos se estes estão dentro de cada triângulo ou não (o que trás a complexidade para $O(n^{4})$).

Para saber se um ponto branco $(b_{x}, b_{y})$ está dentro de um dado triângulo $\{(p^{1}_{x}, p^{1}_{y}), (p^{2}_{x}, p^{2}_{y}), (p^{3}_{x}, p^{3}_{y})\}$, avaliamos se a área de um cada triângulo possível de ser formado com o ponto branco e dois pontos pretos é igual a área total do triângulo preto.

![Exemplo que mostra dois pontos: um ponto verde dentro do triângulo e um ponto vermelho fora. O ponto verde tem a área de todos os triângulos possíveis somando a área do triângulo total enquanto o ponto vermelho tem área de todos os triângulos possíveis somando uma área maior que a do triângulo original.](../../../assets/1560.png)