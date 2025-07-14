# 1137 - Pontos Cocirculares

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1137)

## Solução

Considerando que o tempo limite é bem generoso e há apenas $100$ pontos para testar, podemos considerar todos os círculos formados por todas as combinações de $3$ pontos e verificar quantos outros pontos também fazem parte do perímetro do mesmo círculo.

Para descobrir o centro de um círculo com três pontos, usamos um raciocínio parecido com o usado no problema [1783 - Ih, Ferrou, um Buraco Negro!](../1783/README.md) e então vemos para todos os outros pontos fora do trio quais têm a mesma distância que o raio do círculo.