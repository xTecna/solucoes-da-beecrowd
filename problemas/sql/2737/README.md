# 2737 - Advogados

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2737)

## Solução

Aqui queremos resultados de três pedidos diferentes em uma tabela só:
* O advogado com mais clientes;
* O advogado com menos clientes;
* A média de clientes entre os advogados.

Para os dois primeiros pedidos, podemos usar uma _query_ só. Usando os métodos de agrupamento `max` e `min` como _window functions_, conseguimos os resultados de ambos na mesma query e podemos filtrar apenas os advogados que têm o número máximo ou mínimo. Perceba que, neste caso, não estamos considerando empates, então todos os advogados com o número máximo ou mínimo são exibidos. O enunciado não diz nada a respeito, nem sobre permitir ou proibir, e isso não faz muita diferença no fim das contas.

Para o último pedido, podemos criar artificialmente a coluna `name` com o nome `"Average"` e colocar na coluna `customers_number` o `avg` da tabela, dessa vez como um método de agrupamento normal. 

Com isso, para agregarmos essas diferentes _queries_, podemos uni-las na mesma tabela usando `union all`.