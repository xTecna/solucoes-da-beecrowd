# 2868 - Errrou!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2868)

## Solução

Único detalhe diferenciado desse problema é a entrada, mas mesmo assim ela possui um modelo muito certinho (`primeiro número [operador] segundo número [igual] resultado`), bastando apenas prestar atenção na ordem do que se está lendo. Em algumas linguagens, é necessário jogar informações irrelevantes fora.

### C99
```c
#include <stdio.h>

int main(){
    char operador;
    int C, primeiro_numero, segundo_numero, resultado_input, resultado_real;

    scanf("%d", &C);
    for(int i = 0; i < C; ++i){
        scanf("%d %c %d = %d", &primeiro_numero, &operador, &segundo_numero, &resultado_input);

        switch(operador){
            case '+':   resultado_real = primeiro_numero + segundo_numero;
                        break;
            case '-':   resultado_real = primeiro_numero - segundo_numero;
                        break;
            case 'x':   resultado_real = primeiro_numero * segundo_numero;
                        break;
        }

        if(resultado_input != resultado_real){
            int numero_Rs = resultado_input > resultado_real ? resultado_input - resultado_real : resultado_real - resultado_input;
            printf("E");
            for(int i = 0; i < numero_Rs; ++i){
                printf("r");
            }
            printf("ou!\n");
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    char operador, igual;
    int C, primeiro_numero, segundo_numero, resultado_input, resultado_real;

    cin >> C;
    for(int k = 0; k < C; ++k){
        cin >> primeiro_numero >> operador >> segundo_numero >> igual >> resultado_input;

        switch(operador){
            case '+':   resultado_real = primeiro_numero + segundo_numero;
                        break;
            case '-':   resultado_real = primeiro_numero - segundo_numero;
                        break;
            case 'x':   resultado_real = primeiro_numero * segundo_numero;
                        break;
        }

        if(resultado_input != resultado_real){
            int numero_Rs = resultado_input > resultado_real ? resultado_input - resultado_real : resultado_real - resultado_input;
            cout << 'E';
            for(int i = 0; i < numero_Rs; ++i){
                cout << 'r';
            }
            cout << "ou!" << endl;
        }
    }

    return 0;
}
```

### Python 3.9
```python
operacoes = { '+': lambda a, b: a + b, '-': lambda a, b: a - b, 'x': lambda a, b: a * b }

C = int(input())

for _ in range(C):
    equacao = input().strip().split(' ')
    primeiro_numero = int(equacao[0])
    operador = equacao[1]
    segundo_numero = int(equacao[2])
    resultado_input = int(equacao[4])

    resultado_real = operacoes[operador](primeiro_numero, segundo_numero)

    if(resultado_input != resultado_real):
        numero_Rs = resultado_input - resultado_real if (resultado_input > resultado_real) else resultado_real - resultado_input
        Rs = 'r'*numero_Rs
        print(f'E{Rs}ou!')
```