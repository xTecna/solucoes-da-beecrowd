# 3049 - Nota Cortada

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3049)

## Solução

A área cortada forma um trapézio com base inferior de $B cm$, base superior de $T cm$ e altura de $70 cm$, então podemos calcular sua área como $\frac{(B + T) \cdot 70}{2} = 35 \cdot (B + T) cm^{2}$.

Após calcular essa área, precisamos compará-la com metade da área total, que é um retângulo com $160 cm$ de comprimento e $70 cm$ de altura, o que dá $\frac{160 \cdot 70}{2} = 5600 cm^{2}$.

Com isso, simplificando as operações de desigualdade, a resposta seria

$$
resposta = 
\begin{cases}
    1\text{, se } B + T > 160, \\
    2\text{, se } B + T < 160, \\
    0\text{, caso contrário}
\end{cases}
$$