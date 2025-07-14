# 2158 - Ajudando o Tio Cláudio

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2158)

## Solução

O número de ligações $V = \frac{5P + 6H}{2}$ é o número de lados total dos $P$ pentágonos e  $H$ hexágonos, sendo que como sempre um lado de uma forma geométrica coincide com outra, então é o número de lados dividido por $2$.

Pela relação de Euler, temos que, para qualquer polígono com $V$ vértices, $A$ arestas e $F$ faces, temos que $V - A + F = 2$. Com isso, se queremos saber $V$ e já temos $A$ E $F = P + H$, temos então que $V = A + 2 - (P + H)$.