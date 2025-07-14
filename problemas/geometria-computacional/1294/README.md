# 1294 - A Maior e Menor Caixa

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1294)

## Solução

Os valores de $x$ para que o volume seja o menor possível são triviais: tanto com $x = 0$ quanto com $x = \frac{min(L, W)}{2}$ o volume da caixa é zero.

Agora, o valor onde o volume é máximo equivale ao valor que maximiza a função $V(x) = (L - 2x)(W - 2x)x$, o que podemos descobrir descobrindo qual é o primeiro valor de $x$ onde $V'(x) = 0$. Fazendo a derivada, temos $V'(x) = LW - 4Lx - 4Wx + 12x^{2}$ e, com isso, o valor de $x$ que maximiza $V(x)$ é a primeira raiz de $V'(x)$, que pode ser calculada como $x = \frac{1}{6} (-\sqrt{L^{2} - LW + W^{2}} + L + W)$.