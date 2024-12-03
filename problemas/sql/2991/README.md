# 2991 - Estatísticas dos Departamentos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2991)

## Solução

Para calcular todos esses valores agregados dos salários mínimos agrupos por lotação de cada empregado podemos primeiro fazer uma tabela de salários mínimos (vide problema [2989 - Departamentos e Divisões](../2989/README.md)) e então usando essa tabela para agrupar os dados com `count`, `avg`, `max` e `min`.

Para poder tratar os números $0$ que precisam ser apresentados como um único número $0$ em vez de $0.00$, precisamos criar um `case` na coluna para quando o valor for $0$ imprimir `'0'`. Caso esse tratamento não seja feito, o veredito infelizmente será _Wrong Answer_.