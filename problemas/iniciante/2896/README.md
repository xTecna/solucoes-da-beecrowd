# 2896 - Aproveite a Oferta

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2896)

## Solução

Esse problema se refere a apenas uma única troca e queremos saber a quantidade total de garrafas (vazias ou cheias), então a ideia é, no dia seguinte, após ter esvaziado todas as garrafas:

* Trocar o maior número de garrafas vazias possíveis, conseguindo $\lfloor\frac{N}{K}\rfloor$ garrafas cheias na troca.
* Com isso, sobrarão $N \mod K$ que não foram possíveis de serem trocadas e continuarão vazias.

Logo, o número de garrafas que conseguiremos no segundo dia é $\lfloor\frac{N}{K}\rfloor + N \mod K$.