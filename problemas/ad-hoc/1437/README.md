# 1437 - Esquerda, Volver!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1437)

## Solução

Algo que pode nos ajudar muito a calcular a direção resultante do recruta é mapear cada direção a um número específico. A tabela abaixo mostra o mapeamento que vamos usar, mas você pode usar qualquer um, desde que facilite seu cálculo com os comandos `E` e `D`:

| Direção   | Número |
| --------- | ------ |
| Norte (N) | 0      |
| Leste (L) | 1      |
| Sul (S)   | 2      |
| Oeste (O) | 3      |

Desta maneira, cada comando equivale a uma operação no número da direção.

* Comando `D`: $(numero + 1) \mod 4$
* Comando `E`: $((numero - 1) + 4) \mod 4$

Dê uma olhada na página [Deslocar dentro de um intervalo \[0, N - 1\]](../../../base-teorica/matematica/macetes/README.md#deslocar-dentro-de-um-intervalo-0-n-1) para entender porque os comandos `D` e `E` funcionam. A tabela abaixo mostra o resultado para cada direção após as operações para ter uma prova real de que sempre dá o resultado apropriado.

| Direção antes do comando | Número antes do comando | Comando | Número após o comando | Direção após o comando |
| ------------------------ | ----------------------- | ------- | --------------------- | ---------------------- |
| Norte (N)                | 0                       | D       | $(0 + 1) \mod 4 = 1$       | Leste (L)              |
| Norte (N)                | 0                       | E       | $((0 - 1) + 4) \mod 4 = 3$ | Oeste (O)              |
| Leste (L)                | 1                       | D       | $(1 + 1) \mod 4 = 2$       | Sul (S)                |
| Leste (L)                | 1                       | E       | $((1 - 1) + 4) \mod 4 = 0$ | Norte (N)              |
| Sul (S)                  | 2                       | D       | $(2 + 1) \mod 4 = 3$       | Oeste (O)              |
| Sul (S)                  | 2                       | E       | $((2 - 1) + 4) \mod 4 = 1$ | Leste (L)              |
| Oeste (O)                | 3                       | D       | $(3 + 1) \mod 4 = 0$       | Norte (N)              |
| Oeste (O)                | 3                       | E       | $((3 - 1) + 4) \mod 4 = 2$ | Sul (S)                |

A cada comando, simular a posição que o recruta fica após o mesmo. Por exemplo, se o recruta está virado ao norte e recebe o comando `E`, o recruta agora está virado para o oeste. Ao final, ver em qual posição ele ficou depois de todos os comandos.

### C99
```c
#include <stdio.h>

int main(){
    char comando;
    int N, direcao;

    while(scanf("%d\n", &N)){
        if(!N)  break;

        direcao = 0;
        for(int i = 0; i < N; ++i){
            scanf("%c", &comando);

            if(comando == 'D'){
                direcao = (direcao + 1) % 4;
            }else{
                direcao = ((direcao - 1) + 4) % 4;
            }
        }

        switch(direcao){
            case 0: printf("N\n");
                    break;
            case 1: printf("L\n");
                    break;
            case 2: printf("S\n");
                    break;
            case 3: printf("O\n");
                    break;
        }
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main(){
    char comando;
    int N, direcao;

    while(cin >> N){
        if(!N)  break;

        direcao = 0;
        for(int i = 0; i < N; ++i){
            cin >> comando;

            if(comando == 'D'){
                direcao = (direcao + 1) % 4;
            }else{
                direcao = ((direcao - 1) + 4) % 4;
            }
        }

        switch(direcao){
            case 0: cout << "N" << endl;
                    break;
            case 1: cout << "L" << endl;
                    break;
            case 2: cout << "S" << endl;
                    break;
            case 3: cout << "O" << endl;
                    break;
        }
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);
            
            if(N == 0){
                break;
            }
            
            int direcao = 0;
            string comandos = Console.ReadLine();
            for(int i = 0; i < comandos.Length; ++i){
                if(comandos[i] == 'D'){
                    direcao = (direcao + 1) % 4;
                }else{
                    direcao = ((direcao - 1) + 4) % 4;
                }
            }
            
            switch(direcao){
                case 0: Console.WriteLine('N');
                        break;
                case 1: Console.WriteLine('L');
                        break;
                case 2: Console.WriteLine('S');
                        break;
                case 3: Console.WriteLine('O');
                        break;
            }
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            int direcao = 0;
            String comandos = in.readLine();
            for(int i = 0; i < comandos.length(); ++i){
                if(comandos.charAt(i) == 'D'){
                    direcao = (direcao + 1) % 4;
                }else{
                    direcao = ((direcao - 1) + 4) % 4;
                }
            }

            switch(direcao){
                case 0: System.out.println('N');
                        break;
                case 1: System.out.println('L');
                        break;
                case 2: System.out.println('S');
                        break;
                case 3: System.out.println('O');
                        break;
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
  let N = parseInt(lines.shift());

  if(!N)  break;

  let comandos = lines.shift().trim().split('');

  let direcao = comandos.reduce((acc, cur) => {
    if(cur === 'D'){
      return (acc + 1) % 4;
    }else{
      return ((acc - 1) + 4) % 4;
    }
  }, 0);

  switch(direcao){
    case 0: console.log('N');
            break;
    case 1: console.log('L');
            break;
    case 2: console.log('S');
            break;
    case 3: console.log('O');
            break;
  }
}
```

### Python 3.9
```py
direcoes = ['N', 'L', 'S', 'O']

while True:
    try:
        N = int(input())

        if(not N):
            break

        comandos = input()

        direcao = 0
        for comando in comandos:
            if comando == 'D':
                direcao = (direcao + 1) % 4
            else:
                direcao = ((direcao - 1) + 4) % 4

        print(direcoes[direcao])
    except EOFError:
        break
```