# 2161 - Raiz Quadrada de 10

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2161)

## Solução

Quando eu olhei esse problema, a impressão que eu tive foi que a repetição era feita sempre aumentando de $3$ em $3$ a fração, mas não é isso. A técnica de calcular a raiz quadrada de $10$ usando frações periódicas continuadas funciona repetindo a mesma fração no denominador, assim

$$
\sqrt{10} \approx 3 + \frac{1}{6 + \frac{1}{6}} \approx 3 + \frac{1}{6 + \frac{1}{6 + \frac{1}{6}}} \approx 3 + \frac{1}{6 + \frac{1}{6 + \frac{1}{6 + \frac{1}{6}}}} \approx \cdots
$$

Para conseguirmos emular essa repetição, temos que pensar de baixo pra cima, começando do denominador mais abaixo e ir montando o caminho de volta. Uma boa forma de fazer isso é começando com um variável $x$ iniciando com o valor $6$ e ir repetindo $1 + \frac{6}{x}$ quantas vezes forem necessárias. Perceba que o que vai acontecer é o seguinte

$$
\begin{split}
6 \\
1 + \frac{1}{6} \\
1 + \frac{1}{1 + \frac{1}{6}} \\
1 + \frac{1}{1 + \frac{1}{1 + \frac{1}{6}}}
\end{split}
$$

e assim por diante... Aí no final você faz $3 + \frac{1}{x}$.