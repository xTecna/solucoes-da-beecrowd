# Maior Divisor Comum

## Motivação

Muitas das vezes, gostaríamos de saber qual o maior divisor comum entre dois ou mais números ou, às vezes, até o mínimo múltiplo comum ($MMC(a, b) = \frac{ab}{MDC(a, b)}$). Aqui vamos aprender o método de Euclides para resolver este problema e entender o raciocínio por trás dele para entender como e por que ele funciona.

## Algoritmo

O método de Euclides para encontrar o MDC entre dois números $a$ e $b$ parte das seguintes premissas:

$$MDC(a, b) = \begin{cases}
b \text{, se } a = 0\\
a \text{, se } b = 0\\
MDC(b, a \mod b) \text{, caso contrário}
\end{cases}$$

As duas primeiras propriedades dizem respeito a 0 poder ser divisível por qualquer número, então neste caso, o fator limitante é o outro número que não é zero.

A terceira propriedade se baseia na ideia de diminuir um problema maior em um problema menor usando a ideia de divisão e conquista, diminuindo os casos até cair em um dos dois primeiros. Neste caso, tudo o que resta é provarmos porque a terceira propriedade é verdadeira.

Primeiramente, vamos mostrar que $MDC(a, b)$ divide $c$, onde $c = a - b$. Considerando que existem inteiros $x$ e $y$ tais que $a = x \cdot MDC(a, b)$ e $b = y \cdot MDC(a, b)$, temos que

$$c = x \cdot MDC(a, b) - y \cdot MDC(a, b)\\
c = (x - y)MDC(a, b)$$

ou seja, temos que $MDC(a, b)$ além de dividir $a$ e $b$, também divide $c$. Agora, vamos mostrar que $MDC(b, c)$ divide $a$. Considerando que existem inteiros $w$ e $z$ tais que $b = w \cdot MDC(b, c)$ e $c = z \cdot MDC(b, c)$, temos que

$$a = b + c\\
a = w \cdot MDC(b, c) + z \cdot MDC(b, c)\\
a = (w + z) MDC(b, c)$$

ou seja, $MDC(b, c)$ também divide $a$.

Com isso, se $MDC(a, b)$ divide $b$ e $c$, então, por definição, $MDC(a, b) \leq MDC(b, a - b)$. Por outro lado, se $MDC(b, c)$ divide $b$ e $a$, então, também por definição, $MDC(b, a - b) \leq MDC(a, b)$. Logo, podemos concluir que, na verdade, $MDC(a, b) = MDC(b, a - b)$.

Se ficarmos repetidamente retirando $b$ de $a$ para calcular $MDC(a, b)$, certamente alcançaremos o resto da divisão de $a$ por $b$. Logo, também podemos dizer que  $MDC(a, b) = MDC(b, a \mod b)$, como queríamos demonstrar.

## Implementação

A forma mais comum de se implementar este algoritmo é usando recursão, mas não é difícil converter para a forma iterativa. Aqui apresentamos as versões recursivas por serem muito curtas de escrever. Repare que não é preciso que $a$ seja maior ou igual a $b$ na chamada da função já que, se $b$ for maior que $a$, tudo o que a primeira chamada recursiva vai fazer será inverter a ordem dos parâmetros.

### C99

```c
int MDC(int a, int b){
    return (b == 0) ? a : MDC(b, a % b);
}
```

### C++17

```cpp
int MDC(int a, int b){
    return (b == 0) ? a : MDC(b, a % b);
}
```

### C#

```cs
static int MDC(int a, int b){
    return b == 0 ? a : MDC(b, a % b);
}
```

### Java 19

```java
public static int MDC(int a, int b){
    return b == 0 ? a : MDC(b, a % b);
}
```

### JavaScript 12.18

```javascript
const MDC = (a, b) => (b === 0) ? a : MDC(b, a % b);
```

### Python 3.9

```python
def MDC(a, b):
    return a if b == 0 else MDC(b, a % b)
```

## Problemas

* [1028 - Figurinhas](../../../problemas/matematica/1028/README.md)