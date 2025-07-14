# 2665 - Hipercampo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2665)

## Solução

Como a quantidade de pontos é pequena, podemos nos dar ao luxo de testar, para cada ponto, se os outros pontos podem entrar na resposta ou não. Apesar disso, fizemos uma otimização: considerando como $T_{i}$ o número de triângulos que dá para desenhar usando o ponto $p_{i}$ para qualquer $0 < i < N$, temos que

$$
T_{i} = max
\begin{cases}
T_{j} + 1 \text{, se } p_{j} \text{ estiver dentro do triângulo formado pelos pontos } A \text{, } p_{i} \text{ e } B \\
T_{j} \text{, caso contrário}
\end{cases} \\
\text{para todo } 0 < j < N 
$$

ou seja, para calcular cada $T_{i}$ podemos iterar entre todos os pontos e se algum ponto estiver dentro do triângulo formado por $A$, $p_{i}$ e $B$, então podemos considerar que a resposta pode ser $T_{j} + 1$, contando agora o $p_{i}$ como parte da solução. Para todos esses casos, ficamos com a resposta máxima.