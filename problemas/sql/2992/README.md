# 2992 - Divisões Com Maiores Médias Salariais

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2992)

## Solução

Veja o problema [2989 - Departamentos e Divisões](../2989/README.md) para entender como obter a tabela de salários líquidos. Com essa tabela, estamos interessados em saber a divisão com maior média salarial de cada departamento, o que pode ser feito fazendo primeiro uma _window function_ para toda linha de divisão ter o valor do salário máximo por departamento e então fazer um `where` para filtrar pelos que têm a média igual ao valor máximo. Repare que ao fazer isso poderemos ter empates, mas isso não é importante para o problema em si.