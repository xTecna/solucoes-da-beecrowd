# 2616 - Nenhuma Locação

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2616)

## Solução

Aqui temos interesse em saber quais clientes nunca alugaram nada na locadora. Para isso, precisamos correlacionar clientes com alocações, mas de uma maneira um pouco diferenciada. Aqui precisamos usar `left join`, pois nosso objetivo é correlacionar as duas tabelas de forma a preservar todos os clientes da tabela `customers`. Fazendo um `left join`, ou seja, fixando o lado esquerdo, que seria o lado da tabela `customers` (ou `right join` caso `customers` esteja à direita no comando), vai nos gerar uma tabela onde vão acontecer duas coisas diferentes:

* Para cada cliente que já fez pelo menos uma alocação, terá uma linha para cada alocação feita;
  * Se um cliente alugou $x$ vezes, haverá $x$ linhas com os dados do cliente repetido, mas diferentes alocações.
* Para cada cliente que não fez nenhuma alocação, tenha uma única linha com os dados do cliente exceto a coluna usada para correlação (porque escolhemos preservar o lado do cliente) e com todos os dados da alocação **nulos**. Isso acontece porque o cliente não tem alocações de onde correlacionar (e é por isso que a coluna de correlação é nula também).

Com isso, se queremos ter informação sobre os clientes que nunca fizeram alocações, basta filtrarmos pelos clientes que têm informações nulas em uma das colunas em `locations`. No nosso caso, escolhemos a coluna `id_customers`, mas poderia qualquer outra que normalmente não suporta valor nulo.