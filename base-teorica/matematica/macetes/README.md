# Macetes matemáticos

## Motivação

Aqui tem alguns pequenos macetes matemáticos que você normalmente vai usar em diversos dos problemas que a gente vai resolver nessa página.

## Deslocar dentro de um intervalo $[0, N - 1]$

Suponhamos que temos um número $x$ no intervalo $[0, N - 1]$ e queiramos somar ou subtrair $y$, onde $y \in [0, N - 1]$, mas de forma que o resultado continue nesse mesmo intervalo. Com isso, o que queremos dizer é que se a adição der um número muito grande, que ele _"warpe"_, "dê a volta", e igualmente se o número for muito pequeno.

Um exemplo disso é uma pessoa estar andando num círculo com $10$ marcações de $0$ a $9$ no chão, a pessoa estar na marcação $74 e quando ela dar $4$ passos para frente, ela parar na marcação $1$.
### Adição

$$(x + y) \mod N$$

No nosso exemplo acima, teríamos $(7 + 4) \mod 10 = 11 \mod 10 = 1$.

### Subtração

$$((x - y) + N) \mod N$$

Neste caso, fazemos como o cálculo acima, mas somamos $N$ para evitarmos ter que trabalhar com o resto da divisão de números negativos, que pode ser problemática em algumas linguagens de programação. Como sabemos que $y \in [0, N - 1]$, então sabemos que o resultado de $(x - y + N)$ é sempre positivo e por estarmos somando exatamente $N$, não mudamos o resultado do cálculo original.

## Potentiação rápida

Para calcular potências de maneira mais rápida e precisa, podemos nos valer da seguinte propriedade:

$$x^{y} = \begin{cases}
1, \text{se } y = 0 \\
x \cdot x^{y - 1}, \text{se } y \text{ for ímpar} \\
x^{\frac{y}{2}} \cdot x^{\frac{y}{2}}, \text{se } y \text{ for par}
\end{cases}$$

O que nos dá uma recorrência interessante com complexidade $O(\log{n})$ para uma rápida potênciação de números e matrizes, além da capacidade de adicionar potenciação modular para números muito grandes.

### C99
```c
unsigned long long int potencia(int base, int expoente)
{
    if (expoente == 1)
        return base;
    if (expoente % 2)
        return base * potencia(base, expoente - 1);

    unsigned long long int p = potencia(base, expoente / 2);
    return p * p;
}
```

### C++17
```cpp
unsigned long long int potencia(int base, int expoente)
{
    if (expoente == 1)
        return base;
    if (expoente % 2)
        return base * potencia(base, expoente - 1);

    unsigned long long int p = potencia(base, expoente / 2);
    return p * p;
}
```

### C#
```cs
static double potencia(double basePotencia, int expoente) {
    if (expoente == 1)
        return basePotencia;
    if (expoente % 2 == 1)
        return basePotencia * potencia(basePotencia, expoente - 1);
        
    double p = potencia(basePotencia, expoente / 2);
    return p * p;
}
```

### Java 14
```java
public static double potencia(double base, int expoente) {
    if (expoente == 1)
        return base;
    if (expoente % 2 == 1)
        return base * potencia(base, expoente - 1);

    double p = potencia(base, expoente / 2);
    return p * p;
}
```

### JavaScript 12.18
```js
const potencia = (base, expoente) => {
    if (expoente === 1) return base;
    if (expoente % 2) return base * potencia(base, expoente - 1);

    let p = potencia(base, Math.floor(expoente / 2));
    return p * p;
};
```

### Python 3.9
```py
def potencia(base, expoente):
    if(expoente == 1):
        return base
    if(expoente % 2):
        return base * potencia(base, expoente - 1)

    p = potencia(base, expoente//2)
    return p * p
```