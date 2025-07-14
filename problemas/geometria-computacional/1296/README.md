# 1296 - Medianas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1296)

## Solução

A área $A$ de um triângulo pode ser calculada a partir de suas medianas $m_{1}$, $m_{2}$ e $m_{3}$ por $A = \frac{4}{3}\sqrt{s(s - m_{1})(s - m_{2})(s - m_{3})}$, onde $s$ é o semi-perímetro do triângulo formado pelas medianas ($s = \frac{m_{1} + m_{2} + m_{3}}{2}$).

Note que se $s < 0$, $m_{1} \geq s$, $m_{2} \geq s$ ou $m_{3} \geq s$, a raiz quadrada corre o risco de dar um valor menor ou igual a zero, ou seja, não seria uma área válida.