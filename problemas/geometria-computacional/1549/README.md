# 1549 - Dividindo a Coca

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1549)

## Solução

Como o resultado precisa ser dado em $2$ casas decimais, então sabemos que as possíveis respostas desse problema variam entre $0,00$ (copo vazio) e $H$, a altura máxima do copo, com $100H$ possibilidades, já que estamos contando todos os números entre $0,00$ e $H$ com duas casas decimais. Como a altura pode ser no máximo até $100$, pode ser razoável testar todas as possibilidades, mas também podemos usar pesquisa binária para fazer essa busca já que:
1. Se a altura dos copos for menor que o alvo, então sobra refrigerante.
2. Se a altura dos copos for exatamente igual ao alvo, então não sobra refrigerante e todos os copos têm a mesma quantidade de bebida.
3. Se a altura dos copos for maior que o alvo, então falta refrigerante.

Nesse caso, precisamos de uma fórmula para decidir para uma dada altura $h$ onde $0 < h < H$ qual o volume de refrigerante que cabe no copo. A fórmula do volume $V$ do tronco de um cone com raio maior $R_{maior}$, raio menor $R_{menor}$ e altura $H$ é $V = \frac{\pi H (R_{maior}^2 - R_{menor}^{2})}{3}$, mas no nosso caso não sabemos qual é o $R_{maior}$ para a altura $h$, apenas para a altura $H$ (que é $B$). A única coisa que a gente sabe sobre nosso $R'$ é tal que $b < R' < B$. Pelo fato de estar tudo no mesmo cone então podemos ter uma determinada proporção $R' = b + (B - b) \frac{h}{H}$ representando a soma do limite inferior $b$ com um valor referente a distância entre $b$ e $B$ que cresce proporcionalmente até alcançar $B$ quando $h = H$. 

E com isso a fórmula de volume total para todos os $N$ copos e que devemos então comparar com $L$ é

$$
\begin{split}
V = & N \frac{\pi h (R'^{2} + R'b + b^{2})}{3}
\end{split}
$$

Apesar de tudo isso dito, no código você pode ver que eu fiz os testes com valores entre $0$ e $10000H$, ou seja, quatro casas decimais em vez de duas porque só com esses valores que foi possível chegar no volume esperado em todos os casos de teste. Com isso, a complexidade de testar todos linearmente seria demais para todas essas possibilidades e a pesquisa binária veio bem a calhar.