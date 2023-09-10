# Progressões

## Motivação

Progressões aritméticas e geométricas são formas de representar uma sequência de valores de maneira esquematizada, ou seja, todo elemento da sequência pode ser derivado a partir de seu elemento anterior ou através de uma fórmula de termo geral.

> Toda progressão possui um elemento inicial $a_{1}$ e uma razão $q$.

## Progressão aritmética

Uma progressão geométrica é uma progressão onde o primeiro elemento é fixo e os elementos posteriores são o elemento anterior somado por uma razão fixa.

| Exemplo                | $a_{1}$ | $q$ |
| ---------------------- | ----- | --- |
| 1, 3, 5, 7, 9, 11...   | 1     | 2   |
| 10, 7, 4, 1, -2, -5... | 10    | -3  |
| 0, 2.5, 5, 7.5, 10...  | 0     | 2.5 |

### Termo geral

Para calcular um determinado elemento $a_{n}$, com $n > 0$, podemos fazer

$$a_{n} = a_{1} + (n - 1)q$$

### Soma dos termos de $a_{1}$ até $a_{n}$ de uma progressão aritmética

Para calcular a soma de todos os termos entre $a_{1}$ e $a_{n}$ inclusive, podemos usar a fórmula

$$S = \frac{n(a_{1} + a_{n})}{2}$$

Essa fórmula pode ser obtida através do desenvolvimento do somatório:

$$\begin{split}
S & = \sum_{i = 1}^{n}{a_{i}} \\
S & = \Bigl(\sum_{i = 1}^{n}{a_{1} + (i - 1)q}\Bigr) \\
S & = na_{1} + \sum_{i = 1}^{n}{(i - 1)q} \\
S & = na_{1} + q\Bigl(\sum_{i = 1}^{n}{i - 1}\Bigr) \\
S & = na_{1} + q\Bigl(\frac{n(n - 1)}{2}\Bigr) \\
S & = \frac{n(2a_{1} + q(n - 1))}{2} \\
S & = \frac{n(a_{1} + a_{1} + (n - 1)q)}{2} \\
S & = \frac{n(a_{1} + a_{n})}{2}
\end{split}$$

## Progressão geométrica

Uma progressão geométrica é uma progressão onde o primeiro elemento é fixo e os elementos posteriores são o elemento anterior multiplicado por uma razão fixa e não nula.

| Exemplo                | $a_{1}$ | $q$ |
| ---------------------- | ----- | --- |
| 1, 3, 9, 27, 81...     | 1     | 3   |
| 10, 5, 2.5, 1.25,...   | 10    | 0.5 |
| 1, -2, 4, -8, 16...    | 1     | -2  |

### Termo geral

Para calcular um determinado elemento $a_{n}$, com $n > 0$, podemos fazer

$$a_{n} = a_{1} q^{n - 1}$$

### Soma dos termos de $a_{1}$ até $a_{n}$ de uma progressão geométrica

Para calcular a soma de todos os termos entre $a_{1}$ e $a_{n}$ inclusive, podemos usar a fórmula

$$S = \frac{a_{1}(q^{n} - 1)}{q - 1}$$

Essa fórmula pode ser obtida através do desenvolvimento do somatório:

$$\begin{split}
S & = \sum_{i = 1}^{n}{a_{i}} \\
S & = \sum_{i = 1}^{n}{a_{1}q^{i - 1}} \\
S & = a_{1} \sum_{i = 1}^{n}{q^{i - 1}} \\
S & = a_{1} \Bigl(\frac{q^{n} - 1}{q - 1}\Bigr) \\
S & = \frac{a_{1}(q^{n} - 1)}{q - 1}
\end{split}$$

### Soma dos termos de uma progressão geométrica infinita

Quando $0 < q < 1$, vemos que os termos vão diminuindo de valor, tendendo a zero. Com isso, podemos estimar uma soma para todos os termos de uma progressão geométrica infinita neste caso.

$$S = \frac{a_{1}}{1 - q}$$

A fórmula acima é verdadeira pois $\lim_{n \to \infty}(q^{n} - 1) = -1$ quando $0 < q < 1$.
## Problemas

* [1169 - Trigo no Tabuleiro](../../../problemas/matematica/1169/README.md)
* [1805 - Soma Natural](../../../problemas/matematica/1805/README.md)