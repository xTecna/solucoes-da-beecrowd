# 1022 - TDA Racional

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1022)

## Solução

É possível montar uma classe para armazenar numerador, denominador e retornar operações com outras funções e sua forma irredutível dividindo o numero e o denominador pelo MDC de ambos.

Em algumas linguagens, é até possível sobrescrever os operadores de soma, subtração, multiplicação e divisão para um código mais natural, mas isso não é necessário.

Para fazer cada operação, siga as instruções presentes no enunciado.

### C99
```c
#include <stdio.h>

struct Fracao
{
    int num, den;
};

struct Fracao soma(struct Fracao f1, struct Fracao f2)
{
    struct Fracao retorno;

    retorno.num = f1.num * f2.den + f2.num * f1.den;
    retorno.den = f1.den * f2.den;

    return retorno;
}

struct Fracao subtracao(struct Fracao f1, struct Fracao f2)
{
    struct Fracao retorno;

    retorno.num = f1.num * f2.den - f2.num * f1.den;
    retorno.den = f1.den * f2.den;

    return retorno;
}

struct Fracao multiplicacao(struct Fracao f1, struct Fracao f2)
{
    struct Fracao retorno;

    retorno.num = f1.num * f2.num;
    retorno.den = f1.den * f2.den;

    return retorno;
}

struct Fracao divisao(struct Fracao f1, struct Fracao f2)
{
    struct Fracao retorno;

    retorno.num = f1.num * f2.den;
    retorno.den = f2.num * f1.den;

    return retorno;
}

int MDC(int a, int b)
{
    return (b == 0) ? a : MDC(b, a % b);
}

struct Fracao irredutivel(struct Fracao f)
{
    int mdc = (f.num < 0) ? MDC(-f.num, f.den) : MDC(f.num, f.den);

    f.num /= mdc;
    f.den /= mdc;

    return f;
}

int main()
{
    int N;
    char operador;
    struct Fracao f1, f2, resultado;

    scanf("%d\n", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d / %d %c %d / %d\n", &f1.num, &f1.den, &operador, &f2.num, &f2.den);

        switch (operador)
        {
        case '+':
            resultado = soma(f1, f2);
            break;
        case '-':
            resultado = subtracao(f1, f2);
            break;
        case '*':
            resultado = multiplicacao(f1, f2);
            break;
        case '/':
            resultado = divisao(f1, f2);
            break;
        }

        printf("%d/%d = ", resultado.num, resultado.den);
        resultado = irredutivel(resultado);
        printf("%d/%d\n", resultado.num, resultado.den);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int MDC(int a, int b)
{
    return (b == 0) ? a : MDC(b, a % b);
}

class Fracao
{
public:
    int num;
    int den;

    Fracao()
    {
        num = 0;
        den = 1;
    }

    Fracao(int x, int y)
    {
        num = x;
        den = y;
    }

    Fracao operator+(const Fracao &outra)
    {
        return Fracao(this->num * outra.den + this->den * outra.num, this->den * outra.den);
    }

    Fracao operator-(const Fracao &outra)
    {
        return Fracao(this->num * outra.den - this->den * outra.num, this->den * outra.den);
    }

    Fracao operator*(const Fracao &outra)
    {
        return Fracao(this->num * outra.num, this->den * outra.den);
    }

    Fracao operator/(const Fracao &outra)
    {
        return Fracao(this->num * outra.den, this->den * outra.num);
    }

    Fracao irredutivel()
    {
        int mdc = (this->num < 0) ? MDC(-this->num, this->den) : MDC(this->num, this->den);

        return Fracao(this->num / mdc, this->den / mdc);
    }
};

int main()
{
    int N;
    char operador, barra;
    Fracao f1, f2, resultado;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> f1.num >> barra >> f1.den >> operador >> f2.num >> barra >> f2.den;

        switch (operador)
        {
        case '+':
            resultado = f1 + f2;
            break;
        case '-':
            resultado = f1 - f2;
            break;
        case '*':
            resultado = f1 * f2;
            break;
        case '/':
            resultado = f1 / f2;
            break;
        }

        cout << resultado.num << "/" << resultado.den << " = ";
        resultado = resultado.irredutivel();
        cout << resultado.num << "/" << resultado.den << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const MDC = (a, b) => {
    return (b == 0) ? a : MDC(b, a % b);
}

class Fracao{
    constructor(num, den){
        this.num = num;
        this.den = den;
    }

    irredutivel(){
        let mdc = (this.num < 0) ? MDC(-this.num, this.den) : MDC(this.num, this.den);

        return new Fracao(this.num/mdc, this.den/mdc);
    }
};

const soma = (f1, f2) => {
    return new Fracao(f1.num * f2.den + f2.num * f1.den, f1.den * f2.den);
};

const subtracao = (f1, f2) => {
    return new Fracao(f1.num * f2.den - f2.num * f1.den, f1.den * f2.den);
};

const multiplicacao = (f1, f2) => {
    return new Fracao(f1.num * f2.num, f1.den * f2.den);
};

const divisao = (f1, f2) => {
    return new Fracao(f1.num * f2.den, f2.num * f1.den);
};

let N = parseInt(lines.shift().trim());

let operador = '';
let [f1, f2, resultado] = [new Fracao(0, 1), new Fracao(0, 1), new Fracao(0, 1)];
for(let i = 0; i < N; ++i){
    [f1.num, , f1.den, operador, f2.num, , f2.den] = lines.shift().trim().split(' ');

    f1.num = parseInt(f1.num);
    f1.den = parseInt(f1.den);
    f2.num = parseInt(f2.num);
    f2.den = parseInt(f2.den);

    switch(operador){
        case '+':   resultado = soma(f1, f2);
                    break;
        case '-':   resultado = subtracao(f1, f2);
                    break;
        case '*':   resultado = multiplicacao(f1, f2);
                    break;
        case '/':   resultado = divisao(f1, f2);
                    break;
    }

    let resultadoIrredutivel = resultado.irredutivel();

    console.log(`${resultado.num}/${resultado.den} = ${resultadoIrredutivel.num}/${resultadoIrredutivel.den}`)
}
```

### Python 3.9
```python
def MDC(a, b):
    return a if b == 0 else MDC(b, a % b)


class Fracao:
    def __init__(self, num, den):
        self.num = num
        self.den = den

    def __add__(self, outra):
        return Fracao(self.num * outra.den + outra.num * self.den, self.den * outra.den)

    def __sub__(self, outra):
        return Fracao(self.num * outra.den - outra.num * self.den, self.den * outra.den)

    def __mul__(self, outra):
        return Fracao(self.num * outra.num, self.den * outra.den)

    def __truediv__(self, outra):
        return Fracao(self.num * outra.den, outra.num * self.den)

    def __str__(self):
        return str(self.num) + '/' + str(self.den)

    def irredutivel(self):
        mdc = MDC(-self.num, self.den) if self.num < 0 else MDC(self.num, self.den)

        return Fracao(self.num//mdc, self.den//mdc)


N = int(input())

f1, f2 = Fracao(0, 1), Fracao(0, 1)
for _ in range(N):
    f1.num, _, f1.den, operador, f2.num, _, f2.den = input().strip().split(' ')

    f1.num = int(f1.num)
    f1.den = int(f1.den)
    f2.num = int(f2.num)
    f2.den = int(f2.den)

    resultado = Fracao(0, 1)
    if(operador == '+'):
        resultado = f1 + f2
    elif(operador == '-'):
        resultado = f1 - f2
    elif(operador == '*'):
        resultado = f1 * f2
    elif(operador == '/'):
        resultado = f1 / f2

    resultadoIrredutivel = resultado.irredutivel()

    print(f'{resultado} = {resultadoIrredutivel}')

```