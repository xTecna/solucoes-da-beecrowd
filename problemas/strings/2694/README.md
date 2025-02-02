# 2694 - Problema com a Calculadora

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2694)

## Solução

Os números sempre aparecem na mesma posição, então você pode tirar as _substrings_ de cada parte e operar na soma convertendo essas strings em números.

> Por algum motivo, `read-string` não funcionou para a conversão de _string_ para inteiro em Clojure, então tive que pegar emprestado a conversão do Java.