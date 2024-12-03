# 2989 - Departamentos e Divisões

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2989)

## Solução

Para calcular o salário líquido de cada funcionário precisamos primeiro de uma tabela com a soma dos vencimentos e outra com a soma dos descontos para poder efetuar a diferença entre as duas. Uma vez com a tabela dos salários líquido de cada pessoa, podemos então fazer um `group by` desses salários líquidos por divisão para obter a média e o maior valor.