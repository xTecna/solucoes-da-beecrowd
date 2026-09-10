# 3492 - Ranking turismo CE

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3492)

## Solução

Window Function (DENSE_RANK() ou RANK()): Usada para calcular o ranking_regional particionando por regiao e ordenando pela média de avaliações em ordem decrescente.

Filtro de Cidades (HAVING): Apenas cidades com COUNT(DISTINCT p.ponto_id) >= 2 devem aparecer.

Média de Avaliações: Usar AVG(a.nota) formatando/arredondando para 2 casas decimais (ROUND(AVG(a.nota), 2) ou CAST(... AS NUMERIC(10,2))).

Junções (JOIN): Conectar cidades com pontosturisticos e avaliacoes.