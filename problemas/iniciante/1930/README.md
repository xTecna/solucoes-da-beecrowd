# 1930 - Tomadas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1930)

## Solução

Considerando que cada régua extra vai ocupar uma posição na original (ou em outra régua, caso a original não tenha mais espaço), então podemos contar com a soma de todas as tomadas em todas as réguas menos 3, que é esse espaço ocupado pelas demais.

Note que não é preciso imaginar o caso em que deixar de usar uma régua é mais vantajoso. Como cada régua tem no mínimo duas tomadas e esta só ocupa uma tomada, o saldo é sempre positivo, então sempre vale a pena incluir todas as réguas.