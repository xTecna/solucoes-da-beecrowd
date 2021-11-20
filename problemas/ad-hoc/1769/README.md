# 1769 - CPF 1

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1769)

## Solução

A maior dificuldade desse exercício é como ler a entrada de forma que consigamos ter cada dígito separado apropriadamente para podermos fazer o cálculo de validez dos últimos dois dígitos.

Uma alternativa envolve ler tudo como uma string e traduzir cada caractere para número. Outra alternativa seria ler quatro números inteiros e usar divisões e mods para obter os números esperados.

### C99
```c
#include <stdio.h>

int main()
{
    int a[4], d[11];

    while (scanf("%d.%d.%d-%d", &a[0], &a[1], &a[2], &a[3]) != EOF)
    {
        for (int i = 0; i < 11; ++i)
        {
            d[i] = 0;
        }

        for (int i = 0; i < 3; ++i)
        {
            int j = 2;

            while (a[i])
            {
                d[3 * i + j] = a[i] % 10;

                a[i] /= 10;
                --j;
            }
        }

        d[9] = a[3] / 10;
        d[10] = a[3] % 10;

        int soma = 0;
        for (int i = 0; i < 9; ++i)
        {
            soma += (i + 1) * d[i];
        }
        soma %= 11;
        if (soma == 10)
            soma = 0;

        if (soma == d[9])
        {
            soma = 0;
            for (int i = 0; i < 9; ++i)
            {
                soma += (9 - i) * d[i];
            }
            soma %= 11;
            if (soma == 10)
                soma = 0;

            if (soma == d[10])
            {
                printf("CPF valido\n");
            }
            else
            {
                printf("CPF invalido\n");
            }
        }
        else
        {
            printf("CPF invalido\n");
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    char ponto, traco;
    int a[4], d[11];

    while (cin >> a[0] >> ponto >> a[1] >> ponto >> a[2] >> traco >> a[3])
    {
        for (int i = 0; i < 11; ++i)
        {
            d[i] = 0;
        }

        for (int i = 0; i < 3; ++i)
        {
            int j = 2;

            while (a[i])
            {
                d[3 * i + j] = a[i] % 10;

                a[i] /= 10;
                --j;
            }
        }

        d[9] = a[3] / 10;
        d[10] = a[3] % 10;

        int soma = 0;
        for (int i = 0; i < 9; ++i)
        {
            soma += (i + 1) * d[i];
        }
        soma %= 11;
        if (soma == 10)
            soma = 0;

        if (soma == d[9])
        {
            soma = 0;
            for (int i = 0; i < 9; ++i)
            {
                soma += (9 - i) * d[i];
            }
            soma %= 11;
            if (soma == 10)
                soma = 0;

            if (soma == d[10])
            {
                cout << "CPF valido" << endl;
            }
            else
            {
                cout << "CPF invalido" << endl;
            }
        }
        else
        {
            cout << "CPF invalido" << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let cpf = lines.shift().trim().replace(/[-.]/g, '').split('').map((x) => parseInt(x));

    let soma = 0;
    for(let i = 0; i < 9; ++i){
        soma += (i + 1) * cpf[i];
    }

    soma %= 11;
    if(soma === 10)   soma = 0;

    if(soma === cpf[9]){
        soma = 0;
        for(let i = 0; i < 9; ++i){
            soma += (9 - i) * cpf[i];
        }

        soma %= 11;
        if(soma === 10) soma = 0;

        if(soma === cpf[10]){
            console.log('CPF valido');
        }else{
            console.log('CPF invalido');
        }
    }else{
        console.log('CPF invalido');
    }
}
```

### Python 3.9
```python
while True:
    try:
        cpf = [int(x) for x in input().replace(
            '-', '').replace('.', '')]

        soma = 0
        for i in range(9):
            soma += (i + 1) * cpf[i]

        soma %= 11
        if(soma == 10):
            soma = 0

        if(soma == cpf[9]):
            soma = 0
            for i in range(9):
                soma += (9 - i) * cpf[i]

            soma %= 11
            if(soma == 10):
                soma = 0

            if(soma == cpf[10]):
                print('CPF valido')
            else:
                print('CPF invalido')
        else:
            print('CPF invalido')
    except EOFError:
        break
```