# 2395 - Transporte de Contêineres

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2395)

## Solução

Para sabermos quantos contêiners de tamanho $A \times B \times C$ em um navio de tamanho $X \times Y \times Z$ sem rotacionar os contêineres, calculamos quanto que cada respectiva dimensão cabe na outra e multiplicamos cada número. Portanto, a resposta que procuramos é $\lfloor\frac{X}{A}\rfloor \cdot \lfloor\frac{Y}{B}\rfloor \cdot \lfloor\frac{Z}{C}\rfloor$.