# Macetes matemáticos

## Motivação

Aqui tem alguns pequenos macetes matemáticos que você normalmente vai usar em diversos dos problemas que a gente vai resolver nessa página.

## Deslocar dentro de um intervalo \[0, N - 1]

Suponhamos que temos um número `x` no intervalo `[0, N - 1]` e queiramos somar ou subtrair y, onde `y` também está no intervalo `[0, N - 1]`, mas de forma que o resultado continue nesse mesmo intervalo. Com isso, o que queremos dizer é que se a adição der um número muito grande, que ele "warpe", "dê a volta", e igualmente se o número for muito pequeno.

Um exemplo disso é uma pessoa estar andando num círculo com `10` marcações de `0` a `9` no chão, a pessoa estar na marcação `7` e quando ela dar `4` passos para frente, ela parar na marcação `1`.

### Adição

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;(x&space;&plus;&space;y)&space;\text{&space;mod&space;}&space;N" title="\bg_white (x + y) \text{ mod } N" />

No nosso exemplo acima, teríamos `(7 + 4) mod 10 = 11 mod 10 = 1`.

### Subtração

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;(x&space;-&space;y&space;&plus;&space;N)&space;\text{&space;mod&space;}&space;N" title="\bg_white (x - y + N) \text{ mod } N" />

Neste caso, fazemos como o cálculo acima, mas somamos `N` para evitarmos ter que trabalhar com o resto da divisão de números negativos, que pode ser problemática em algumas linguagens de programação. Como sabemos que `y` está também no intervalo `[0, N - 1]`, então sabemos que o resultado de `(x - y + N)` é sempre positivo e por estarmos somando exatamente `N`, não mudamos o resultado do cálculo original.

## Potentiação rápida

Para calcular potências de maneira mais rápida e precisa, podemos nos valer da seguinte propriedade:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;x^y&space;=&space;\begin{cases}1,&space;\text{se&space;y&space;=&space;0}\\x&space;\cdot&space;x^{y&space;-&space;1},&space;\text{se&space;y&space;for&space;impar}\\x^{y/2}&space;\cdot&space;x^{y/2},&space;\text{se&space;y&space;for&space;par}\end{cases}" title="\bg_white x^y = \begin{cases}1, \text{se y = 0}\\x \cdot x^{y - 1}, \text{se y for impar}\\x^{y/2} \cdot x^{y/2}, \text{se y for par}\end{cases}" />

O que nos dá uma recorrência interessante com complexidade O(log n) para uma rápida potênciação de números e matrizes, além da capacidade de adicionar potenciação modular para números muito grandes.

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

### JavaScript 12.18
```javascript
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