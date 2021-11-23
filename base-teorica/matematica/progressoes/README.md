# Progressões

## Motivação

Progressões aritméticas e geométricas são formas de representar uma sequência de valores de maneira esquematizada, ou seja, todo elemento da sequência pode ser derivado a partir de seu elemento anterior ou através de uma fórmula de termo geral.

> Toda progressão possui um elemento inicial `a_1` e uma razão `q`.

## Progressão aritmética

Uma progressão geométrica é uma progressão onde o primeiro elemento é fixo e os elementos posteriores são o elemento anterior somado por uma razão fixa.

| Exemplo                | `a_1` | `q` |
| ---------------------- | ----- | --- |
| 1, 3, 5, 7, 9, 11...   | 1     | 2   |
| 10, 7, 4, 1, -2, -5... | 10    | -3  |
| 0, 2.5, 5, 7.5, 10...  | 0     | 2.5 |

### Termo geral

Para calcular um determinado elemento `a_n`, com `n` > 0, podemos fazer

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;a_n&space;=&space;a_1&space;&plus;&space;(n&space;-&space;1)q" title="\bg_white a_n = a_1 + (n - 1)q" />

### Soma dos termos de `a_1` até `a_n`

Para calcular a soma de todos os termos entre `a_1` e `a_n` inclusive, podemos usar a fórmula

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;S&space;=&space;\frac{n(a_1&space;&plus;&space;a_n)}{2}" title="\bg_white S = \frac{n(a_1 + a_n)}{2}" />

## Progressão geométrica

Uma progressão geométrica é uma progressão onde o primeiro elemento é fixo e os elementos posteriores são o elemento anterior multiplicado por uma razão fixa e não nula.

| Exemplo                | `a_1` | `q` |
| ---------------------- | ----- | --- |
| 1, 3, 9, 27, 81...     | 1     | 3   |
| 10, 5, 2.5, 1.25,...   | 10    | 0.5 |
| 1, -2, 4, -8, 16...    | 1     | -2  |

### Termo geral

Para calcular um determinado elemento `a_n`, com `n` > 0, podemos fazer

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;a_{n}&space;=&space;a_{1}q^{n&space;-&space;1}" title="\bg_white a_{n} = a_{1}q^{n - 1}" />

### Soma dos termos de `a_{1}` até `a_{n}`

Para calcular a soma de todos os termos entre `a_{1}` e `a_{n}` inclusive, podemos usar a fórmula

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;S&space;=&space;\frac{a_{1}(1&space;-&space;q^{n})}{1&space;-&space;q}" title="\bg_white S = \frac{a_{1}(1 - q^{n})}{1 - q}" />

### Soma dos termos de uma progressão geométrica infinita

Quando `|q|` < 1, vemos que os termos vão diminuindo de valor, tendendo a zero. Com isso, podemos estimar uma soma para todos os termos de uma progressão geométrica infinita neste caso.

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;S&space;=&space;\frac{a_{1}}{1&space;-&space;q}" title="\bg_white S = \frac{a_{1}}{1 - q}" />