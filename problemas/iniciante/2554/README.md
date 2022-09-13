# 2554 - Pizza Antes de BH

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2554)

## Solução

A entrada desse problema é bastante chata, dê uma olhada nos códigos abaixo para ver como lidar com ela na sua linguagem. Sobre o problema em si, o problem setter fez a boa e colocou as datas em ordem cronológica, então não há necessidade de fazer comparação entre datas.

### C99

```c
#include <stdio.h>

struct data
{
    int dia;
    int mes;
    int ano;
};

int main()
{
    int N, D, p, dia, mes, ano;
    struct data entrada, melhorData;

    while (scanf("%d %d", &N, &D) != EOF)
    {
        melhorData.dia = 0, melhorData.mes = 0, melhorData.ano = 0;
        for (int i = 0; i < D; ++i)
        {
            scanf("%d/%d/%d", &(entrada.dia), &(entrada.mes), &(entrada.ano));

            int pessoas = 0;
            for (int j = 0; j < N; ++j)
            {
                scanf(" %d", &p);
                pessoas += p;
            }

            if (pessoas == N && melhorData.dia == 0)
            {
                melhorData = entrada;
            }
        }

        if (melhorData.dia == 0)
        {
            printf("Pizza antes de FdI\n");
        }
        else
        {
            printf("%d/%d/%d\n", melhorData.dia, melhorData.mes, melhorData.ano);
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cstdio>

using namespace std;

int main()
{
    string data, melhorData;
    int N, D, p, dia, mes, ano;

    while (cin >> N >> D)
    {
        melhorData = "";
        for (int i = 0; i < D; ++i)
        {
            cin >> data;

            int pessoas = 0;
            for (int j = 0; j < N; ++j)
            {
                cin >> p;
                pessoas += p;
            }

            if (pessoas == N && melhorData == "")
            {
                melhorData = data;
            }
        }

        if (melhorData == "")
        {
            cout << "Pizza antes de FdI" << endl;
        }
        else
        {
            cout << melhorData << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int N = numeros[0];
            int D = numeros[1];

            string melhorData = null;
            for(int i = 0; i < D; ++i){
                int pessoas = 0;
                List<string> dados = Console.ReadLine().Trim().Split(' ').ToList();
                for(int j = 1; j <= N; ++j){
                    pessoas += int.Parse(dados[j]);
                }

                if(pessoas == N && melhorData == null){
                    melhorData = dados[0];
                }
            }

            if(melhorData == null){
                Console.WriteLine("Pizza antes de FdI");
            }else{
                Console.WriteLine(melhorData);
            }
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int N = Integer.parseInt(entrada[0]);
            int D = Integer.parseInt(entrada[1]);

            String melhorData = null;
            for (int i = 0; i < D; ++i) {
                entrada = in.readLine().trim().split(" ");

                int pessoas = 0;
                for (int j = 1; j <= N; ++j) {
                    pessoas += Integer.parseInt(entrada[j]);
                }

                if (pessoas == N && melhorData == null) {
                    melhorData = entrada[0];
                }
            }

            if (melhorData == null) {
                System.out.println("Pizza antes de FdI");
            } else {
                System.out.println(melhorData);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [N, D] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let melhorData = null;
    for (let i = 0; i < D; ++i) {
        let [data, ...pessoas] = lines.shift().trim().split(' ');
        let soma = pessoas.reduce((acc, cur) => acc + parseInt(cur), 0);
        if (soma === N && melhorData === null) {
            melhorData = data;
        }
    }

    if (melhorData === null) {
        console.log('Pizza antes de FdI');
    } else {
        console.log(melhorData);
    }
}
```

### Python 3.9

```py
while True:
    try:
        N, D = [int(x) for x in input().strip().split(' ')]

        melhorData = None
        for i in range(D):
            dados = input().strip().split(' ')
            pessoas = sum([int(x) for x in dados[1:]])

            if(pessoas == N and melhorData == None):
                melhorData = dados[0]

        if(melhorData == None):
            print('Pizza antes de FdI')
        else:
            print(melhorData)
    except EOFError:
        break
```