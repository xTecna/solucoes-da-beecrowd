# Maior Divisor Comum

## Motivação

Muitas das vezes, gostaríamos de saber qual o maior divisor comum entre dois ou mais números ou, às vezes, até o mínimo múltiplo comum (<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;MMC(a,&space;b)&space;=&space;\frac{ab}{MDC(a,&space;b)}" title="\bg_white MMC(a, b) = \frac{ab}{MDC(a, b)}" />). Aqui vamos aprender o método de Euclides para resolver este problema e entender o raciocínio por trás dele para entender como e por que ele funciona.

## Algoritmo

O método de Euclides para encontrar o MDC entre dois números a e b parte das seguintes premissas:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;MDC(a,&space;b)&space;=&space;\begin{cases}b,&space;\text{se&space;}&space;a&space;=&space;0\\a,&space;\text{se&space;}&space;b&space;=&space;0\\MDC(b,&space;r),&space;\text{caso&space;contrario,&space;onde&space;}&space;r&space;=&space;a&space;\mod&space;b\end{cases}" title="\bg_white MDC(a, b) = \begin{cases}b, \text{se } a = 0\\a, \text{se } b = 0\\MDC(b, r), \text{caso contrario, onde } r = a \mod b\end{cases}" />

As duas primeiras propriedades dizem respeito a 0 poder ser divisível por qualquer número, então neste caso, o fator limitante é o outro número que não é zero.

A terceira propriedade se baseia na ideia de diminuir um problema maior em um problema menor usando a ideia de divisão e conquista, diminuindo os casos até cair em um dos dois primeiros. Neste caso, tudo o que resta é provarmos porque a terceira propriedade é verdadeira.

Primeiramente, vamos mostrar que MDC(a, b) divide c, onde c = a - b. Considerando que existem inteiros x e y tais que a = x MDC(a, b) e b = y MDC(a, b), temos que

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;c&space;=&space;x&space;\cdot&space;MDC(a,&space;b)&space;-&space;y&space;\cdot&space;MDC(a,&space;b)\\c&space;=&space;(x&space;-&space;y)&space;MDC(a,&space;b)" title="\bg_white c = x \cdot MDC(a, b) - y \cdot MDC(a, b)\\c = (x - y) MDC(a, b)" />

ou seja, temos que MDC(a, b) além de dividir a e b, também divide c. Agora, vamos mostrar que MDC(b, c) divide a. Considerando que existem inteiros w e z tais que b = w MDC(b, c) e c = z MDC(b, c), temos que

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;a&space;=&space;b&space;&plus;&space;c\\a&space;=&space;w&space;\cdot&space;MDC(b,&space;c)&space;&plus;&space;z&space;\cdot&space;MDC(b,&space;c)\\a&space;=&space;(w&space;&plus;&space;z)&space;MDC(b,&space;c)" title="\bg_white a = b + c\\a = w \cdot MDC(b, c) + z \cdot MDC(b, c)\\a = (w + z) MDC(b, c)" />

ou seja, MDC(b, c) também divide a.

Com isso, se MDC(a, b) divide b e c, então, por definição, <img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;MDC(a,&space;b)&space;\leq&space;MDC(b,&space;c)" title="\bg_white MDC(a, b) \leq MDC(b, c)" />. Por outro lado, se MDC(b, c) divide b e a, então, também por definição, <img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;MDC(b,&space;c)&space;\leq&space;MDC(a,&space;b)" title="\bg_white MDC(b, c) \leq MDC(a, b)" />. Logo, podemos concluir que, na verdade, <img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;MDC(a,&space;b)&space;=&space;MDC(b,&space;a&space;-&space;b)" title="\bg_white MDC(a, b) = MDC(b, a - b)" />.

Se ficarmos repetidamente retirando b de a para calcular MDC(a, b), certamente alcançaremos o resto da divisão de a por b. Logo, também podemos dizer que <img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;MDC(a,&space;b)&space;=&space;MDC(b,&space;a&space;\mod&space;b)" title="\bg_white MDC(a, b) = MDC(b, a \mod b)" />, como queríamos demonstrar.

## Implementação

A forma mais comum de se implementar este algoritmo é usando recursão, mas não é difícil converter para a forma iterativa. Aqui apresentamos as versões recursivas por serem muito curtas de escrever. Repare que não é preciso que a seja maior ou igual a b na chamada da função já que, se b for maior que a, tudo o que a próxima chamada recursiva vai fazer será inverter a ordem dos parâmetros.

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

#### JavaScript 12.18

```javascript
const MDC = (a, b) => (b === 0) ? a : MDC(b, a % b);
```

#### Python 3.9

```python
def MDC(a, b):
    return a if b == 0 else MDC(b, a % b)
```

## Problemas

* [1028 - Figurinhas](../../../matematica/1028/README.md)