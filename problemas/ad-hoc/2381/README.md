# 2381 - Lista de Chamada

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2381)

## Solução

Este problema se resume a encontrar o $k$-ésimo menor elemento em um vetor, onde o $k$ é dado pelo enunciado. Para este problema em específico temos algumas soluções viáveis com suas respectivas complexidades, mas por questão de simplicidade, aqui só vou colocar a mais simples. Mas só à caráter expositivo, as soluções mais eficientes envolvem _heaps_ e até mesmo um algoritmo linear chamado _QuickSelect_. Aqui podemos também nos dar ao luxo de aplicar a solução mais simples porque o máximo de nomes é $100$, que é um número bem pequeno.

Mas, bem, a solução mais simples é ordenar o vetor e escolher o $k$-ésimo elemento, com complexidade $O(n \log{n})$, que é bom o suficiente para nós.